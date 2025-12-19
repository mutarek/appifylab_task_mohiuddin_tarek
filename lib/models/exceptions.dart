class ApiException implements Exception {
  final String message;
  final int? statusCode;
  final String? code;

  ApiException({
    required this.message,
    this.statusCode,
    this.code,
  });

  @override
  String toString() => message;
}

class NetworkException extends ApiException {
  NetworkException({super.message = 'Network error occurred'})
      : super(code: 'NETWORK_ERROR');
}

class AuthenticationException extends ApiException {
  AuthenticationException({super.message = 'Authentication failed'})
      : super(statusCode: 401, code: 'AUTH_ERROR');
}

class AuthorizationException extends ApiException {
  AuthorizationException({super.message = 'You do not have permission'})
      : super(statusCode: 403, code: 'AUTH_FORBIDDEN');
}

class NotFoundException extends ApiException {
  NotFoundException({super.message = 'Resource not found'})
      : super(statusCode: 404, code: 'NOT_FOUND');
}

class ServerException extends ApiException {
  ServerException({super.message = 'Server error occurred'})
      : super(statusCode: 500, code: 'SERVER_ERROR');
}

class ValidationException extends ApiException {
  ValidationException({super.message = 'Validation failed'})
      : super(code: 'VALIDATION_ERROR');
}

