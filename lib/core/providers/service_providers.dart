import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:appifylab/core/services/secure_storage_service.dart';
import 'package:appifylab/core/services/dio_client.dart';
import 'package:appifylab/features/auth/services/auth_api_service.dart';
import 'package:appifylab/features/community/services/community_api_service.dart';
import 'package:appifylab/features/profile/services/profile_api_service.dart';


final secureStorageProvider = Provider((ref) => SecureStorageService());

final dioClientProvider = Provider((ref) {
  final storage = ref.watch(secureStorageProvider);
  return DioClient(storage: storage);
});


final authApiServiceProvider = Provider((ref) {
  final dioClient = ref.watch(dioClientProvider);
  final storage = ref.watch(secureStorageProvider);
  return AuthApiService(dioClient: dioClient, storage: storage);
});

final communityApiServiceProvider = Provider((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return CommunityApiService(dioClient: dioClient);
});

final profileApiServiceProvider = Provider((ref) {
  final dioClient = ref.watch(dioClientProvider);
  return ProfileApiService(dioClient: dioClient);
});

