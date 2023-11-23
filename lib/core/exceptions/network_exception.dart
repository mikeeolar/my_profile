class NetworkException implements Exception {
  final String message;
  final bool? deviceRegistered;

  const NetworkException(this.message, {this.deviceRegistered});
}