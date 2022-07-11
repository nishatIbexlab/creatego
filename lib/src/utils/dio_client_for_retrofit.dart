import 'dart:developer';

import "package:dio/dio.dart";
import 'package:flutter_easylogger/flutter_logger.dart';

class DioClientForRetrofit {
  final String? bearerToken;
  final String? contentType;
  final ResponseType responseType;
  DioClientForRetrofit(
      {this.bearerToken,
      this.contentType,
      this.responseType = ResponseType.json});

  Map<String, dynamic>? get headers {
    if (bearerToken != null) {
      return {
        "Authorization": "Bearer $bearerToken",
        "Content-Type": contentType ?? "application/json",
        "Accept": "application/json",
        "Accept-Encoding": 'gzip,compress'
      };
    }
    return {
      "Content-Type": contentType ?? "application/json",
      "Accept": "application/json",
      "Accept-Encoding": "gzip,compress"
    };
  }

  Dio init({List<Interceptor>? customInterceptors, bool prettyLog = true}) {
    Dio _dio = Dio();
    Logger.init(prettyLog,
        isShowTime: false, isShowNavigation: false, isShowFile: false);
    if (prettyLog) {
      _dio.interceptors.add(loggerInterceptor);
    }
    if (customInterceptors != null && customInterceptors.isNotEmpty) {
      _dio.interceptors.addAll(customInterceptors);
    }
    BaseOptions options = BaseOptions(
        headers: headers,
        responseType: responseType,
        receiveDataWhenStatusError: true);
    _dio.options = options;
    return _dio;
  }
}

final loggerInterceptor =
    InterceptorsWrapper(onRequest: (RequestOptions options, handler) {
  String headers = "";
  options.headers.forEach((key, value) {
    headers += "| $key: $value";
  });

  Logger.d(
      "| [DIO] Request: ${(options.method)} - ${(options.baseUrl)} -  ${(options.path)}");
  // if (options.data != null) Logger.d("| ${(options.data.toString())}");
  if (options.queryParameters.isNotEmpty) {
    Logger.d("| Request_Options: ${options.queryParameters}");
  }
  if (options.data != null) Logger.d("| Request_Data: ${options.data}");
  Logger.d("| Headers: $headers");

  handler.next(options); //continue
}, onResponse: (Response response, handler) async {
  Logger.i(
      "| [DIO] Response [path -> ${(response.requestOptions.path)}] ||| [method -> ${(response.requestOptions.method)}] ||| [code -> ${(response.statusCode)}]:${(response.data.toString())}");

  handler.next(response);
  // return response; // continue
}, onError: (DioError error, handler) async {
  Logger.e(
      "| [DIO] Error [path -> ${(error.requestOptions.path)}] ||| [method -> ${(error.requestOptions.method)}] ||| [code -> ${(error.response?.statusCode)}]:${(error.response?.data.toString())}");

  handler.next(error); //continue
});

////Retrofit example. These codes are supposed to be generated.
//import 'dart:io';
// import 'package:retrofit/retrofit.dart';
// import 'package:dio/dio.dart';
// import 'package:json_annotation/json_annotation.dart';
//
// part 'rf_fit_client.g.dart';
//
// @RestApi(
//     baseUrl: 'https://6271f859c455a64564ba2d94.mockapi.io/api/rfit',
//     parser: Parser.JsonSerializable)
// abstract class RestClient {
//   factory RestClient(Dio dio, {String baseUrl}) = _RestClient;
//
//   @GET("/image")
//   Future<HttpResponse<List<Task>>> getTasks();
//
//   @GET("/image/{id}")
//   Future<HttpResponse<Task>> getTask(@Path() int id);
//
//   @GET("/image/{id}")
//   Future<HttpResponse> getTaskWithNullParam(@Path() int id);
//
//   @GET("/image`")
//   Future<HttpResponse<Task>> getTaskWithQuery(
//       @Queries() Map<String, dynamic> valueQuery);
//
//   @POST("http://httpbin.org/post")
//   Future<HttpResponse> postTaskWithFile(@Part() File file);
//
//   @POST("http://httpbin.org/post")
//   @FormUrlEncoded()
//   Future<HttpResponse> postUrlEncodedFormData(@Field() String hello);
// }
//
// @JsonSerializable()
// class Task {
//   String id;
//   Task({required this.id});
//   factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
//   Map<String, dynamic> toJson() => _$TaskToJson(this);
// }
