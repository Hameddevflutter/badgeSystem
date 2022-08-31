class ServerException implements Exception {
  final String message;
  ServerException(this.message);
}
class NetworkException implements Exception {}
class UnAuthorizeException implements Exception {}
