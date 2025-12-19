import 'package:dio/dio.dart';
import 'package:appifylab/config/api_config.dart';
import 'package:appifylab/models/exceptions.dart';
import 'package:appifylab/core/services/secure_storage_service.dart';

class DioClient {
  late Dio _dio;
  final SecureStorageService _storage;

  DioClient({SecureStorageService? storage})
      : _storage = storage ?? SecureStorageService() {
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiConfig.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
        },
      ),
    );

    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: _onRequest,
        onResponse: _onResponse,
        onError: _onError,
      ),
    );
  }

  Future<void> _onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {

    final token = await _storage.getToken();
    if (token != null && token.isNotEmpty) {
      options.headers['Authorization'] = 'Bearer $token';
    }

    handler.next(options);
  }

  Future<void> _onResponse(
      Response response, ResponseInterceptorHandler handler) async {
    handler.next(response);
  }

  Future<void> _onError(DioException error, ErrorInterceptorHandler handler) async {
    handler.next(error);
  }

  Future<T> get<T>(
    String path, {
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.get<T>(
        path,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw ApiException(message: 'Unexpected error: $e');
    }
  }

  Future<T> post<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.post<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw ApiException(message: 'Unexpected error: $e');
    }
  }

  Future<T> put<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.put<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw ApiException(message: 'Unexpected error: $e');
    }
  }

  Future<T> delete<T>(
    String path, {
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      final response = await _dio.delete<T>(
        path,
        data: data,
        queryParameters: queryParameters,
        options: options,
      );
      return response.data as T;
    } on DioException catch (e) {
      throw _handleError(e);
    } catch (e) {
      throw ApiException(message: 'Unexpected error: $e');
    }
  }

  ApiException _handleError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException(message: 'Request timeout. Please try again.');
      case DioExceptionType.connectionError:
        return NetworkException(
            message: 'No internet connection. Please check your connection.');
      case DioExceptionType.badResponse:
        return _handleStatusCode(error.response?.statusCode ?? 0,
            error.response?.data as Map<String, dynamic>?);
      default:
        return NetworkException(message: 'An error occurred. Please try again.');
    }
  }

  ApiException _handleStatusCode(int statusCode, Map<String, dynamic>? data) {
    String errorMessage = 'An error occurred';

    if (data != null) {
      errorMessage = data['message'] as String? ??
          data['error'] as String? ??
          data['msg'] as String? ??
          data['errors'] as String? ??
          errorMessage;

      if (data['errors'] is Map) {
        final errors = data['errors'] as Map;
        final firstError = errors.values.first;
        if (firstError is List && firstError.isNotEmpty) {
          errorMessage = firstError.first.toString();
        } else {
          errorMessage = firstError.toString();
        }
      }
    }

    switch (statusCode) {
      case 400:
        return ValidationException(message: errorMessage);
      case 401:
        return AuthenticationException(message: errorMessage);
      case 403:
        return AuthorizationException(message: errorMessage);
      case 404:
        return NotFoundException(message: errorMessage);
      case 422:
        return ValidationException(message: errorMessage);
      case 500:
      case 502:
      case 503:
        return ServerException(message: errorMessage);
      default:
        return ApiException(
          message: errorMessage,
          statusCode: statusCode,
        );
    }
  }

  Dio get dio => _dio;
}


