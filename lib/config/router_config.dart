import 'package:appifylab/features/community/screens/communities_list_screen_v2.dart';
import 'package:appifylab/features/community/screens/community_details_simple_screen.dart';
import 'package:appifylab/features/home/screens/home_screen.dart';
import 'package:appifylab/features/profile/screens/profile_screen_v2.dart';
import 'package:appifylab/features/auth/screens/splash_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:appifylab/features/auth/providers/auth_provider.dart';

import '../features/auth/screens/login_screen.dart';

final routerProvider = Provider((ref) {
  final authState = ref.watch(authProvider);
  final isAuthenticated = authState.isAuthenticated;

  return GoRouter(
    initialLocation: isAuthenticated ? '/home' : '/splash',
    redirect: (context, state) {
      final isLoggingIn = state.matchedLocation == '/login';
      final isSplash = state.matchedLocation == '/splash';

      if (!isAuthenticated && !isLoggingIn && !isSplash) {
        return '/splash';
      }

      if (isAuthenticated && (isLoggingIn || isSplash)) {
        return '/home';
      }

      return null;
    },
    routes: [
      GoRoute(
        path: '/splash',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomeScreen(),
        routes: [
          GoRoute(
            path: 'communities',
            builder: (context, state) => const CommunitiesListScreen(),
          ),
          GoRoute(
            path: 'community/:id',
            builder: (context, state) {
              final communityId = state.pathParameters['id']!;
              final title = state.uri.queryParameters['title'];
              final thumbnail = state.uri.queryParameters['thumbnail'];
              return CommunityDetailsScreen(
                communityId: communityId,
                communityTitle: title,
                communityThumbnail: thumbnail,
              );
            },
          ),
          GoRoute(
            path: 'profile',
            builder: (context, state) => const ProfileScreen(),
          ),
        ],
      ),
    ],
  );
});

