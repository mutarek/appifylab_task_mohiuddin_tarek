import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/constants/app_constants.dart';
import 'package:appifylab/models/auth_response.dart';
import 'package:appifylab/features/auth/providers/auth_provider.dart';
import 'package:appifylab/features/profile/providers/profile_provider.dart';
import 'package:appifylab/config/theme_provider.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileAsync = ref.watch(currentUserProfileProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => _showEditProfileDialog(context),
          ),
        ],
      ),
      body: profileAsync.when(
        data: (user) => _buildProfileContent(context, ref, user),
        loading: () => _buildLoadingState(),
        error: (error, stackTrace) => _buildErrorState(context, ref, error),
      ),
    );
  }

  Widget _buildProfileContent(BuildContext context, WidgetRef ref, User user) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 150,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: user.coverPic != null
                      ? DecorationImage(
                          image: CachedNetworkImageProvider(user.coverPic!),
                          fit: BoxFit.cover,
                        )
                      : null,
                  color: Colors.grey.shade300,
                ),
              ),
              Positioned(
                bottom: -30,
                left: 20,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: user.profilePic != null
                      ? CachedNetworkImageProvider(user.profilePic!)
                      : null,
                  child: user.profilePic == null
                      ? const Icon(Icons.person, size: 50)
                      : null,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(AppSizes.paddingLarge),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  user.fullName ?? 'User',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.bold,
                      ),
                ),
                const SizedBox(height: 4),
                Text(
                  user.email ?? '',
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: Colors.grey.shade600,
                      ),
                ),
                const SizedBox(height: 12),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 4,
                  ),
                  decoration: BoxDecoration(
                    color: user.userType == 'STUDENT'
                        ? Colors.blue.shade100
                        : Colors.orange.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Text(
                    user.userType ?? '',
                    style: TextStyle(
                      color: user.userType == 'STUDENT'
                          ? Colors.blue.shade700
                          : Colors.orange.shade700,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                if (user.bio != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Bio',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        user.bio ?? '',
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStatCard(
                      context,
                      '${user.totalCourses ?? 0}',
                      'Courses',
                    ),
                    _buildStatCard(
                      context,
                      '${user.totalCommunities ?? 0}',
                      'Communities',
                    ),
                    _buildStatCard(
                      context,
                      '${user.totalGroups ?? 0}',
                      'Groups',
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                if (user.globeLink != null ||
                    user.youtubeLink != null ||
                    user.linkedinLink != null ||
                    user.facebookLink != null)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Social Links',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      const SizedBox(height: 8),
                      Row(
                        children: [
                          if (user.globeLink != null)
                            _buildSocialIconButton(Icons.web, 'Website'),
                          if (user.youtubeLink != null)
                            _buildSocialIconButton(Icons.video_library, 'YouTube'),
                          if (user.linkedinLink != null)
                            _buildSocialIconButton(Icons.account_circle, 'LinkedIn'),
                          if (user.facebookLink != null)
                            _buildSocialIconButton(Icons.people, 'Facebook'),
                        ],
                      ),
                    ],
                  ),
                const SizedBox(height: 24),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: AppSizes.paddingMedium,
                    vertical: AppSizes.paddingMedium,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Theme.of(context).dividerColor,
                    ),
                    borderRadius: BorderRadius.circular(AppSizes.borderRadiusMedium),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.dark_mode,
                            color: Theme.of(context).primaryColor,
                          ),
                          const SizedBox(width: AppSizes.paddingMedium),
                          Text(
                            'Dark Mode',
                            style: Theme.of(context).textTheme.bodyLarge,
                          ),
                        ],
                      ),
                      Switch(
                        value: ref.watch(darkModeProvider),
                        onChanged: (value) {
                          ref.read(darkModeProvider.notifier).toggleDarkMode();
                        },
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: () => _showEditProfileDialog(context),
                    child: const Text('Edit Profile'),
                  ),
                ),
                const SizedBox(height: 12),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: () => _showLogoutDialog(context, ref),
                    child: const Text('Logout'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatCard(BuildContext context, String count, String label) {
    return Expanded(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              Text(
                count,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 4),
              Text(
                label,
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSocialIconButton(IconData icon, String tooltip) {
    return Padding(
      padding: const EdgeInsets.only(right: 12),
      child: Tooltip(
        message: tooltip,
        child: Container(
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            borderRadius: BorderRadius.circular(8),
          ),
          child: Icon(icon, color: Colors.grey.shade700),
        ),
      ),
    );
  }

  Widget _buildLoadingState() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  Widget _buildErrorState(BuildContext context, WidgetRef ref, Object error) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.error_outline,
            size: 64,
            color: Colors.red.shade300,
          ),
          const SizedBox(height: AppSizes.paddingMedium),
          Text(
            'Error loading profile',
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          const SizedBox(height: AppSizes.paddingSmall),
          Text(
            error.toString(),
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
          const SizedBox(height: AppSizes.paddingMedium),
          ElevatedButton(
            onPressed: () {
              ref.refresh(currentUserProfileProvider);
            },
            child: const Text('Retry'),
          ),
        ],
      ),
    );
  }

  void _showEditProfileDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Edit Profile'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Full Name',
              ),
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Bio',
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 12),
            TextField(
              decoration: const InputDecoration(
                labelText: 'About Me',
              ),
              maxLines: 3,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Profile updated successfully')),
              );
            },
            child: const Text('Save'),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog(BuildContext context, WidgetRef ref) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Logout'),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () async {
              await ref.read(authProvider.notifier).logout();
              if (context.mounted) {
                Navigator.pop(context);
              }
            },
            child: const Text('Logout'),
          ),
        ],
      ),
    );
  }
}

