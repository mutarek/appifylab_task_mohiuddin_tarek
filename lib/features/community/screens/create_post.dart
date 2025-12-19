import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/features/community/providers/community_provider.dart';

class CreatePostScreen extends ConsumerStatefulWidget {
  final String communityId;
  final String spaceId;
  final VoidCallback? onPostCreated;

  const CreatePostScreen({
    Key? key,
    required this.communityId,
    required this.spaceId,
    this.onPostCreated,
  }) : super(key: key);

  @override
  ConsumerState<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends ConsumerState<CreatePostScreen> {
  final postContentController = TextEditingController();

  @override
  void dispose() {
    postContentController.dispose();
    super.dispose();
  }

  void publishNewPost() async {
    final postContent = postContentController.text.trim();

    if (postContent.isEmpty) {
      _showNotification('Please enter some content');
      return;
    }

    ref.read(postSubmissionLoadingProvider.notifier).state = true;

    try {
      await Future.delayed(const Duration(seconds: 1));

      if (mounted) {
        _showNotification('Post created successfully!');
        widget.onPostCreated?.call();
        Navigator.pop(context);
      }
    } catch (error) {
      if (mounted) {
        _showNotification('Error creating post: $error');
      }
    } finally {
      if (mounted) {
        ref.read(postSubmissionLoadingProvider.notifier).state = false;
      }
    }
  }

  void _showNotification(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final isPostSubmitting = ref.watch(postSubmissionLoadingProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create a Post'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPageTitle(context),
              const SizedBox(height: 32),
              _buildPostContentSection(),
              const SizedBox(height: 32),
              _buildActionButtons(isPostSubmitting),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPageTitle(BuildContext context) {
    return Text(
      'What\'s on your mind?',
      style: Theme.of(context).textTheme.headlineSmall?.copyWith(
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _buildPostContentSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Your message',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        const SizedBox(height: 12),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade300),
            borderRadius: BorderRadius.circular(8),
          ),
          child: TextField(
            controller: postContentController,
            maxLines: 8,
            decoration: InputDecoration(
              hintText: 'Type your message here...',
              border: InputBorder.none,
              contentPadding: const EdgeInsets.all(16),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildActionButtons(bool isPostSubmitting) {
    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: isPostSubmitting ? null : () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: ElevatedButton(
            onPressed: isPostSubmitting ? null : publishNewPost,
            child: isPostSubmitting
                ? const SizedBox(
              height: 20,
              width: 20,
              child: CircularProgressIndicator(
                strokeWidth: 2,
                valueColor: AlwaysStoppedAnimation<Color>(
                  Colors.white,
                ),
              ),
            )
                : const Text('Post'),
          ),
        ),
      ],
    );
  }
}

