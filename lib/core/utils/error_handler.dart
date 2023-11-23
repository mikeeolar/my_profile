// ignore_for_file: unnecessary_null_comparison

import 'package:dio/dio.dart';
import 'package:my_portfolio/core/utils/exports.dart';

import '../utils/network_utils.dart' as network_utils;

class ErrorHandler {
  static parseError(DioException e, [bool decrypt = false]) {
    if (e.response == null) {
      throw const NetworkException('Connection error');
    }
    if (e.response!.data != null) {
      if (e.requestOptions.responseType.name == 'plain') {
         Map data = network_utils.decodeResponseBodyToJson(
            decrypt ? Utils.decryptData(e.response?.data) : e.response?.data);
        if (data.isNotEmpty) {
          // throw NetworkException(data['message']);
        }
      } else {
        Map data = decrypt ? Utils.decryptData(e.response?.data) : e.response?.data;
        if (data.isNotEmpty) {
          throw NetworkException(data['message']);
        }
      }
    }
  }
}
