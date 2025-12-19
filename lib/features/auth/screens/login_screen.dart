import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:appifylab/utils/validators.dart';
import 'package:appifylab/features/auth/providers/auth_provider.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  final emailFieldController = TextEditingController();
  final passwordFieldController = TextEditingController();
  final formValidationKey = GlobalKey<FormState>();

  bool shouldRememberMe = false;
  bool isPasswordHidden = true;

  @override
  void dispose() {
    emailFieldController.dispose();
    passwordFieldController.dispose();
    super.dispose();
  }

  void performLogin() async {
    if (!formValidationKey.currentState!.validate()) {
      return;
    }

    try {
      final email = emailFieldController.text.trim();
      final password = passwordFieldController.text;

      await ref.read(authProvider.notifier).login(
        email: email,
        password: password,
      );

      if (mounted) {
        context.go('/home');
      }
    } catch (error) {
      if (mounted) {
        _showErrorNotification(error.toString());
      }
    }
  }

  void _showErrorNotification(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red.shade600,
        duration: const Duration(seconds: 3),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final authenticationState = ref.watch(authProvider);
    final isAuthenticationInProgress = authenticationState.isLoading;

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Column(
            children: [
              const SizedBox(height: 40),

              _buildAppLogo(context),

              const SizedBox(height: 32),

              _buildWelcomeText(context),

              const SizedBox(height: 40),

              _buildLoginForm(context, isAuthenticationInProgress),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppLogo(BuildContext context) {
    return Icon(
      Icons.people,
      size: 80,
      color: Theme.of(context).primaryColor,
    );
  }

  Widget _buildWelcomeText(BuildContext context) {
    return Text(
      'Welcome to AppifyLab',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildLoginForm(BuildContext context, bool isLoading) {
    return Form(
      key: formValidationKey,
      child: Column(
        children: [
          _buildEmailField(),
          const SizedBox(height: 16),
          _buildPasswordField(),
          const SizedBox(height: 12),
          _buildRememberMeCheckbox(),
          const SizedBox(height: 24),
          _buildLoginButton(isLoading),
        ],
      ),
    );
  }

  Widget _buildEmailField() {
    return TextFormField(
      controller: emailFieldController,
      decoration: InputDecoration(
        labelText: 'Email Address',
        hintText: 'Enter your email',
        prefixIcon: const Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      validator: Validators.validateEmail,
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      controller: passwordFieldController,
      decoration: InputDecoration(
        labelText: 'Password',
        hintText: 'Enter your password',
        prefixIcon: const Icon(Icons.lock),
        suffixIcon: IconButton(
          icon: Icon(
            isPasswordHidden ? Icons.visibility_off : Icons.visibility,
          ),
          onPressed: () {
            setState(() {
              isPasswordHidden = !isPasswordHidden;
            });
          },
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      obscureText: isPasswordHidden,
      validator: Validators.validatePassword,
    );
  }

  Widget _buildRememberMeCheckbox() {
    return CheckboxListTile(
      value: shouldRememberMe,
      onChanged: (value) {
        setState(() {
          shouldRememberMe = value ?? false;
        });
      },
      title: const Text('Remember me'),
      contentPadding: EdgeInsets.zero,
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  Widget _buildLoginButton(bool isLoading) {
    return SizedBox(
      width: double.infinity,
      height: 48,
      child: ElevatedButton(
        onPressed: isLoading ? null : performLogin,
        child: isLoading
            ? const SizedBox(
          height: 24,
          width: 24,
          child: CircularProgressIndicator(
            strokeWidth: 2,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        )
            : const Text(
          'Login',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}

