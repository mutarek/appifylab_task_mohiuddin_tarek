import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/models/auth_response.dart';
import 'package:appifylab/core/providers/service_providers.dart';

final currentUserProfileProvider = FutureProvider.autoDispose<User>((ref) async {
  final service = ref.watch(profileApiServiceProvider);
  return service.getUserProfile();
});

