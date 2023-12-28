import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
// import 'package:get/get.dart' as a;

import '../models/api_response/api_response.dart';
import '../utils/app_consts.dart';
import '../utils/show_messages.dart';

typedef GetUserAuthTokenCallback = Future<String?> Function();

class NetworkClient {
  static const contentTypeJson = 'application/json';
  // ignore: unused_field
  final GetUserAuthTokenCallback _getUserAuthToken;
  final Dio _restClient;

  ///
  ///
  ///
  NetworkClient({
    required GetUserAuthTokenCallback getUserAuthToken,
  })  : _getUserAuthToken = getUserAuthToken,
        _restClient = _createDio(AppConsts.baseUrl);

  ///
  ///
  ///
  Future<ApiResponse<T>> post<T>(
    String path, {
    data,
    Map<String, dynamic>? queryParameters,
    bool? sendUserAuth,
  }) async {
    log("this is the payload ==== $data");
    log("this is the path ==== $path");
    try {
      log("in try mode");
      final resp = await _restClient.post(path,
          data: FormData.fromMap(data),
          queryParameters: queryParameters,
          options: await _createDioOptions(
                  contentType: contentTypeJson,

                ));
      final jsonData = jsonDecode(resp.data);
      final code = jsonData['code'];
      log("fetch data form api");
      log('THIS IS THE CODE fetch $code');
      if (code == '0') {
        return ApiResponse<T>.success(
          statusCode: resp.statusCode,
          rawData: jsonData,
        );
      } else if (code == '1') {
        keyMessages(jsonData['message']);
        return ApiResponse<T>.error(
          statusCode: resp.statusCode,
          message: jsonData['message'] ?? '',
        );
      } else  {
        return ApiResponse<T>.error(
          statusCode: resp.statusCode,
          message: jsonData['message'],
        );
      }
    } on DioError catch (e) {
      showErrorMessage("Failed to connected to server");
      return _createResponse<T>(e);
    }
  }
  ///
  ///
  ///
  Future<ApiResponse<T>> get<T>(
      String path, {
        data,
        bool? sendUserAuth,
      }) async {
    log("this is the payload ==== $data");
    log("this is the path ==== $path");
    try {
      log("in try mode");
      final resp = await _restClient.get(path,
          options: await _createDioOptions(
            contentType: contentTypeJson,
          ));
      if (kDebugMode) {
        print(resp.data!);
      }
      final jsonData1 = jsonEncode(resp.data);
      final jsonData = jsonDecode(jsonData1);
      // final code = jsonData['code'];
      log("fetch data form api");
      // log('THIS IS THE CODE fetch $code');
      if (kDebugMode) {
print(jsonData.hashCode);
      }
      
      return ApiResponse<T>.success(
        statusCode: resp.statusCode,
        rawData: jsonData,
      );
      // if (code == '0') {
      //   return ApiResponse<T>.success(
      //     statusCode: resp.statusCode,
      //     rawData: jsonData,
      //   );
      // } else if (code == '1') {
      //   keyMessages(jsonData['message']);
      //   return ApiResponse<T>.error(
      //     statusCode: resp.statusCode,
      //     message: jsonData['message'] ?? '',
      //   );
      // } else  {
      //   return ApiResponse<T>.error(
      //     statusCode: resp.statusCode,
      //     message: jsonData['message'],
      //   );
      // }
    } on DioError catch (e) {
      showErrorMessage("Failed to connected to server");
      return _createResponse<T>(e);
    }
  }

  ///
  ///
  ///
  ///
  ///
  ///
  ApiResponse<T> _createResponse<T>(DioError error) {
    switch (error.type) {
      case DioErrorType.connectTimeout:
        return ApiResponse<T>.error(
          statusCode: 500,
          message: 'Failed to connected to server',
        );
      case DioErrorType.sendTimeout:
        return ApiResponse<T>.error(
          statusCode: 500,
          message: 'Failed to connected to server',
        );
      case DioErrorType.receiveTimeout:
        return ApiResponse<T>.error(
          statusCode: 500,
          message: 'Server not responding',
        );
      case DioErrorType.response:
        log('THIS IS THE ERROR ${error.type} ${error.message} ${error.error} ${error.response}');
        // ignore: unused_local_variable
        final jsonResp = error.response!.data;
        // final errorStr = jsonResp['error'];
        // final message = jsonResp['message'] as String;
        return ApiResponse<T>.error(
          statusCode: error.response?.statusCode,
          // error: errorStr,
          // message: message,
        );
      case DioErrorType.cancel:
        return ApiResponse<T>.error(
          statusCode: 500,
          message: 'Request canceled',
        );
      case DioErrorType.other:
        return ApiResponse<T>.error(
          statusCode: 500,
          message: 'Something went wrong, try again later',
        );
    }
  }



  ///
  ///
  ///
  Future<Options> _createDioOptions({
    required String contentType,

  }) async {

    ///
    ///
    ///
    final headers = {
      'API-KEY': AppConsts.apiKey,
    };
    final options = Options(
      headers: headers,
    );
    return options;
  }

  ///
  ///
  ///
  static Dio _createDio(String baseUrl) {
    final options = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 10000,
      receiveTimeout: 10000,
    );
    final dio = Dio(options);
    dio.interceptors.add(LogInterceptor(
      requestHeader: false,
      responseBody: true,
    ));
    return dio;
  }
}

void keyMessages(String key) {
}
