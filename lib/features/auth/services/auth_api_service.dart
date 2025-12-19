import 'dart:convert';
import 'package:appifylab/config/api_config.dart';
import 'package:appifylab/models/auth_response.dart';
import 'package:appifylab/core/services/dio_client.dart';
import 'package:appifylab/core/services/secure_storage_service.dart';

class AuthApiService {
  final DioClient _dioClient;
  final SecureStorageService _storage;

  AuthApiService({
    required DioClient dioClient,
    required SecureStorageService storage,
  })  : _dioClient = dioClient,
        _storage = storage;

  Future<AuthResponse> login({
    required String email,
    required String password,
  }) async {
    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiConfig.loginEndpoint,
      data: {
        'email': email,
        'password': password,
      },
    );

    final authResponse = AuthResponse.fromJson(response);

    await _storage.saveToken(authResponse.token);

    return authResponse;
  }

  Future<void> logout() async {
    try {
      await _dioClient.post(ApiConfig.logoutEndpoint);
    } catch (e) {
    }

    await _storage.deleteAll();
  }

  Future<String> refreshToken() async {
    final refreshToken = await _storage.getRefreshToken();

    if (refreshToken == null || refreshToken.isEmpty) {
      throw Exception('No refresh token available');
    }

    final response = await _dioClient.post<Map<String, dynamic>>(
      ApiConfig.refreshTokenEndpoint,
      data: {
        'refresh_token': refreshToken,
      },
    );

    final newToken = response['token'] as String;
    await _storage.saveToken(newToken);

    return newToken;
  }

  Future<User?> getCurrentUser() async {
    final userData = await _storage.getUserData();
    if (userData == null || userData.isEmpty) {
      return null;
    }

    try {
      final json = jsonDecode(userData) as Map<String, dynamic>;
      return User.fromJson(json);
    } catch (e) {
      return null;
    }
  }

  Future<bool> isAuthenticated() async {
    final token = await _storage.getToken();
    return token != null && token.isNotEmpty;
  }
}

