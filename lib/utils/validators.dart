class Validators {
  static String? validateEmail(String? value) {
    if (value == null || value.isEmpty) {
      return 'Email is required';
    }

    final emailRegex = RegExp(
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$',
    );

    if (!emailRegex.hasMatch(value)) {
      return 'Please enter a valid email';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }

    if (value.length < 6) {
      return 'Password must be at least 6 characters';
    }

    return null;
  }

  static String? validateRequired(String? value, {String fieldName = 'This field'}) {
    if (value == null || value.isEmpty) {
      return '$fieldName is required';
    }
    return null;
  }

  static String? validateText(String? value, {int minLength = 3, int maxLength = 50}) {
    if (value == null || value.isEmpty) {
      return 'This field is required';
    }

    if (value.length < minLength) {
      return 'Must be at least $minLength characters';
    }

    if (value.length > maxLength) {
      return 'Must not exceed $maxLength characters';
    }

    return null;
  }

  static String? validateUrl(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }

    try {
      Uri.parse(value);
      if (value.startsWith('http://') || value.startsWith('https://')) {
        return null;
      }
      return 'URL must start with http:// or https://';
    } catch (e) {
      return 'Invalid URL format';
    }
  }
}

