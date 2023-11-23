import 'dart:convert';
import 'dart:developer' as dev;

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_portfolio/core/models/user/user.dart';
import 'package:my_portfolio/core/services/device_info_service.dart';
import 'package:my_portfolio/core/services/user_service.dart';
import 'package:my_portfolio/core/utils/error_handler.dart';
import 'package:my_portfolio/core/utils/exports.dart';
import '../../utils/network_utils.dart' as network_utils;

/// Helper service that abstracts away common HTTP Requests
class HttpServiceImpl extends HttpService {
  final DeviceInfoService _deviceInfoService = locator<DeviceInfoService>();
  final UserService _userService = locator<UserService>();
  User? get user => _userService.user;

  final Dio _dio = Dio(BaseOptions(connectTimeout: 60.seconds));

  @override
  void setHeader({bool formdata = false, bool formEncoded = false}) {
    _userService.getUser();
    final Map<String, dynamic> header = {
      'content-type': formdata
          ? 'multipart/form-data'
          : formEncoded
              ? 'application/x-www-form-urlencoded'
              : 'application/json',
      'Accept': formdata
          ? 'multipart/form-data'
          : formEncoded
              ? 'application/x-www-form-urlencoded'
              : 'application/json',
      'AppVersion': _deviceInfoService.version,
      'DeviceType': _deviceInfoService.deviceType,
      'DeviceId': _deviceInfoService.id,
      'REMOTE_ADDR': _deviceInfoService.ip,
    };

    if (user != null) {
      header['Authorization'] = 'Bearer ${user?.token}';
    }

    _dio.options.headers.addAll(header);
  }

  @override
  void dispose() {
    _dio.interceptors.clear();
    _dio.close(force: true);
  }

  @override
  void clearHeaders() {
    _dio.options.headers.clear();
  }

  @override
  Future<FormattedResponse> getHttp(String route,
      {Map<String, dynamic>? params,
      bool refreshed = false,
      bool formdata = false}) async {
    late Response response;
    params?.removeWhere((key, value) => value == null);
    // final fullRoute = '${dotenv.env['API']}$route';
    final fullRoute = route;
    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('[GET] Sending $params to $fullRoute');
    } else {
      Logger.d('[GET] Sending to $fullRoute');
    }

    try {
      setHeader(formdata: formdata);
      response = await _dio.get(
        fullRoute,
        queryParameters: params,
        options: Options(
            contentType: 'application/json', responseType: ResponseType.plain),
      );
    } on DioException catch (e) {
      Logger.e(
          'HttpService: Failed to GET $fullRoute: Error message: ${e.message}');

      if (dotenv.env['APP_DEBUG'] == 'true') {
        debugPrint('Http response data is: ${e.response?.data}');
      }

      // if (e.response?.statusCode == 401) {
      //   if (Navigator.of(StackedService.navigatorKey!.currentContext!)
      //       .canPop()) {
      //     _navigationService.clearStackAndShow(Routes.onboarding);
      //   }
      //   throw const AuthException('Session Expired');
      // }

      ErrorHandler.parseError(e);
    } catch (e) {
      log('$e');
    }

    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('Received Status: ${response.statusCode == 200}');
      log('Received Response: $response');
    }

    if (response.data.toString().isEmpty) {
      return FormattedResponse(
          success: response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204,
          data: '');
    }
    try {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: jsonDecode(
          response.data.toString(),
        ),
      );
    } on FormatException {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: response.data.toString(),
      );
    }
  }


  @override
  Future<FormattedResponse> postHttp(String route, Map<String, dynamic> body,
      {Map<String, dynamic>? params,
      bool formdata = false,
      bool formEncoded = false,
      bool decrypt = false}) async {
    late Response response;
    params?.removeWhere((key, value) => value == null);
    body.removeWhere((key, value) => value == null);
    final fullRoute = '${dotenv.env['API']}$route';
    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('[POST] Sending $body to $fullRoute');
      dev.log('[POST] Sending $body to $fullRoute');
    } else {
      Logger.d('[POST] Sending to $fullRoute');
    }

    try {
      setHeader(formdata: formdata);

      response = await _dio.post(
        fullRoute,
        data: formdata ? FormData.fromMap(body) : body,
        queryParameters: params,
        options: Options(
            contentType: formdata
                ? 'multipart/form-data'
                : formEncoded
                    ? 'application/x-www-form-urlencoded'
                    : 'application/json',
            responseType: ResponseType.json),
      );
    } on DioException catch (e) {
      Logger.e('HttpService: Failed to POST ${e.response?.data}');
      if (decrypt) {
        Logger.e(
            'HttpService: Failed to POST ${Utils.decryptData(e.response?.data)}');
        dev.log(
            'HttpService: Failed to POST ${Utils.decryptData(e.response?.data)}');
      }
      if (dotenv.env['APP_DEBUG'] == 'true') {
        Logger.e('Http response data is: ${e.message}');
      }
      // if (e.response?.statusCode == 401) {
      //   if (Navigator.of(StackedService.navigatorKey!.currentContext!)
      //       .canPop()) {
      //     // _navigationService.clearStackAndShow(Routes.onboarding);
      //   }
      //   throw AuthException(
      //       jsonDecode(e.response?.data)['message'] ?? 'Session Expired');
      // }
      ErrorHandler.parseError(e);
    }

    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('Received Status: ${response.statusCode == 200}');
      log('Received Response: $response');
    }

    try {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: response.data,
      );
    } on FormatException {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: response.data,
      );
    }
  }

  @override
  Future<FormattedResponse> downloadHttp(
      String route, dynamic body, String path) async {
    late Response response;
    body?.removeWhere((key, value) => value == null);
    final fullRoute = '${dotenv.env['API']}$route';
    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('[DOWNLOAD] Sending $body to $fullRoute');
    } else {
      Logger.d('[DOWNLOAD] Sending to $fullRoute');
    }

    try {
      setHeader();

      response = await _dio.download(
        fullRoute,
        path,
        data: Utils.encryptData(jsonEncode(body)),
        options: Options(contentType: 'application/json', method: 'POST'),
      );
    } on DioException catch (e) {
      Logger.e('HttpService: Failed to DOWNLOAD ${e.response?.data}');

      if (dotenv.env['APP_DEBUG'] == 'true') {
        debugPrint('Http response data is: ${e.message}');
      }
      // if (e.response?.statusCode == 401) {
      //   if (Navigator.of(StackedService.navigatorKey!.currentContext!)
      //       .canPop()) {
      //     // _navigationService.clearStackAndShow(Routes.auth);
      //   }
      //   throw const AuthException('Session Expired');
      // }
      ErrorHandler.parseError(e);
    }

    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('Received Response: $response');
    }

    try {
      return FormattedResponse(
          success: response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204,
          data: response.data);
    } on FormatException {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: response.data.toString(),
      );
    }
  }

  @override
  Future<FormattedResponse> putHttp(String route, dynamic body,
      {Map<String, dynamic>? params,
      refreshed = false,
      bool formdata = false,
      bool auth = false,
      bool decrypt = false}) async {
    late Response response;
    params?.removeWhere((key, value) => value == null);
    body?.removeWhere((key, value) => value == null);
    final fullRoute = '${dotenv.env['API']}$route';
    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('[PUT] Sending $body to $fullRoute');
    } else {
      Logger.d('[PUT] Sending to $fullRoute');
    }

    try {
      setHeader(formdata: formdata);
      response = await _dio.put(
        fullRoute,
        data: formdata ? FormData.fromMap(body) : body,
        queryParameters: params,
        onSendProgress: network_utils.showLoadingProgress,
        onReceiveProgress: network_utils.showLoadingProgress,
        options: Options(
            contentType: formdata ? 'multipart/form-data' : 'application/json',
            responseType: ResponseType.json),
      );
    } on DioException catch (e) {
      if (decrypt) {
        Logger.e(
            'HttpService: Failed to PUT ${Utils.decryptData(e.response?.data)}');
        dev.log(
            'HttpService: Failed to PUT ${Utils.decryptData(e.response?.data)}');
      }
      Logger.e('HttpService: Failed to PUT ${e.response?.data}');
      Logger.e('Http response data is: ${e.message}');
      // if (e.response?.statusCode == 401) {
      //   if (Navigator.of(StackedService.navigatorKey!.currentContext!)
      //       .canPop()) {
      //     // _navigationService.clearStackAndShow(Routes.auth);
      //   }
      //   throw const AuthException('Session Expired');
      // }
      ErrorHandler.parseError(e);
    }

    // dynamic decodedResponse = jsonDecode(response.data);

    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('Received Status: ${response.statusCode == 200}');
      log('Received Response: $response');
    }

    // return FormattedResponse(
    //     success: decodedResponse['success'] as bool? ?? false,
    //     data: decodedResponse,
    //     errors: ErrorHandler.parseErrors(
    //         decodedResponse['validationErrors']));
    try {
      return FormattedResponse(
          success: response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204,
          data: response.data);
    } on FormatException {
      return FormattedResponse(
        success: response.statusCode == 200 ||
            response.statusCode == 201 ||
            response.statusCode == 204,
        data: response.data.toString(),
      );
    }
  }

  @override
  Future deleteHttp(String route,
      {Map<String, dynamic>? params,
      refreshed = false,
      bool auth = false}) async {
    late Response response;
    params?.removeWhere((key, value) => value == null);

    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('[DELETE] Sending $params to $route');
    } else {
      Logger.d('[DELETE] Sending to $route');
    }

    try {
      setHeader();
      final fullRoute = '${dotenv.env['API']}$route';
      response = await _dio.delete(
        fullRoute,
        queryParameters: params,
        options: Options(
          contentType: 'application/json',
        ),
      );
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        // _navigationService.clearStackAndShow(Routes.signinViewRoute);
        // throw AuthException('Invalid token and credentials');
      }
      Logger.e(
          'HttpService: Failed to DELETE $route: Error message: ${e.message}');
      debugPrint('Http response data is: ${e.response?.data}');
      // throw NetworkException(e.response?.data != null ? e.response.data['message'] ?? e.message : e.message);
    }

    network_utils.checkForNetworkExceptions(response);

    Logger.d('Received Response: $response');

    // return network_utils.decodeResponseBodyToJson(response.data as String);
    if (dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('Received Status: ${response.statusCode}');
      log('Received Response: ${response.toString()}');
    }

    try {
      return FormattedResponse(
          success: response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204,
          data: response.data);
    } on FormatException {
      return FormattedResponse(
          success: response.statusCode == 200 ||
              response.statusCode == 201 ||
              response.statusCode == 204,
          data: response.data.toString());
    }
  }
}
