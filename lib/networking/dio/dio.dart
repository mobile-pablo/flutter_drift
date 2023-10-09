import 'package:dio/dio.dart';
import 'package:flutter_drift_1/core/api_key.dart';
import 'package:flutter_drift_1/core/const/news_service_const.dart';

BaseOptions _createOptions() => BaseOptions(
      baseUrl: guardianBaseUrl,
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
      connectTimeout: const Duration(seconds: 5),
      queryParameters: <String, dynamic>{'api-key': guardianApiKey},
    );

Dio buildDio() {
  Dio dio = Dio(_createOptions());

  dio.interceptors.addAll([
    LogInterceptor(
      responseBody: true,
      requestBody: true,
    )
  ]);
  return dio;
}
