import 'package:my_portfolio/core/utils/exports.dart';

abstract class HttpService {
  /// Send GET request to endpoint/[route] and return the `response`
  /// - if successful: returns decoded json data
  ///
  /// - throws `NetworkException` if GET fails
  Future<FormattedResponse> getHttp(String route,
      {Map<String, dynamic>? params, bool refreshed = false});

  /// Send POST request with [body] to endpoint/[route] and return the `response`
  /// - if successful: returns decoded json data
  ///
  /// - throws `NetworkException` if POST request fails
  Future<FormattedResponse> postHttp(String route, Map<String, dynamic> body,
      {Map<String, dynamic>? params,
      bool formdata = false,
      bool formEncoded = false,
      bool decrypt = true});

  /// Send request with [body] to endpoint/[route] and return the `response`
  /// - if successful: returns decoded json data
  ///
  /// - throws `NetworkException` if POST request fails
  Future<FormattedResponse> downloadHttp(
      String route, dynamic body, String path);

  /// Send POST request with [body] to endpoint/[route] and return the `response`
  /// - if successful: returns decoded json data
  ///
  /// - throws `NetworkException` if POST request fails
  Future<FormattedResponse> putHttp(
    String route,
    dynamic body, {
    Map<String, dynamic> params,
    bool auth = false,
    bool formdata = false,
  });

  /// Send DELETE request to endpoint/[route] and return the `response`
  /// - if successful: returns decoded json data
  ///
  /// - throws `NetworkException` if DELETE fails
  Future<dynamic> deleteHttp(String route,
      {Map<String, dynamic> params, bool auth = false});

  /// Set the header to use for further requests
  setHeader();

  /// Clear headers set
  clearHeaders();

  void dispose();
}
