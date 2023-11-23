import 'dart:convert' as convert;

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:my_portfolio/core/exceptions/network_exception.dart';
import 'package:my_portfolio/core/utils/logger.dart';

void checkForNetworkExceptions(Response response) {
  if (response.statusCode! < 200 || response.statusCode! >= 400) {
    throw const NetworkException('Failed to connect to internet');
  }
}

void showLoadingProgress(received, total) {
  if (total != -1) {
    if(dotenv.env['APP_DEBUG'] == 'true') {
      Logger.d('${(received / total * 100).toStringAsFixed(0)}%');
    }
  }
}

dynamic decodeResponseBodyToJson(String body) {
  try {
    final data = convert.jsonDecode(body);
    return data;
  } on FormatException catch (e) {
    if(dotenv.env['APP_DEBUG'] == 'true') {
      Logger.e('Network Utils: Failed to decode response body ${e.message}');
    }
    throw NetworkException(e.message);
  }
}