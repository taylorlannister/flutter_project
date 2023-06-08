import 'dart:convert' as convert;
import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_etamine_app/NetWork/API/Config/api_config.dart';
import 'package:flutter_etamine_app/NetWork/Interceptor/auth_header_interceptor.dart';

class DioInstance {
  DioService getDio({String baseUrl = 'https://a.szzhijing.com'}) {
    final BaseOptions options = BaseOptions(
      connectTimeout: 15000,
      receiveTimeout: 15000,
      baseUrl: baseUrl.isNotEmpty ? baseUrl : APIConfig.getBaseUrl(),
    );
    final Dio dio = Dio(options);
    dio.interceptors.add(AuthHeaderInterceptor());
//    dio.interceptors.add(LogInterceptor(responseBody: true, requestBody: true));
    return DioService(dio);
  }
}

class DioService {
  DioService(this.dio);

  Dio dio;

  Future<dynamic> _dioGet(String url, Map<String, dynamic> params) async {
    final Response<dynamic> response = await dio
        .get(url, queryParameters: await _baseParameters(params))
        .catchError((dynamic error) {
      return Response<dynamic>(data: _formatDict(error));
    });
    return response.data;
  }

  Future<dynamic> _dioPost(String url, Map<String, dynamic> params) async {
    final Response<dynamic> response = await dio
        .post(url, data: await _baseParametersString(params))
        .catchError((dynamic error) {
      return Response<dynamic>(data: _formatDict(error));
    });

    return response.data;
  }

  Future<dynamic> _uploadFile(String url, FormData formData) async {
    final Response<dynamic> response =
        await dio.post(url, data: formData).catchError((dynamic error) {
      return Response<dynamic>(data: _formatDict(error));
    });
    return response.data;
  }

  Stream<dynamic> uploadFile(String url, FormData formData) =>
      Stream<dynamic>.fromFuture(_uploadFile(url, formData)).map((dynamic resString) {
        return resString;
      }).asBroadcastStream();

  Stream<dynamic> post(String url, Map<String, dynamic> params,
          {bool printLog = false}) =>
      Stream<dynamic>.fromFuture(_dioPost(url, params)).map((dynamic resString) {
        if (printLog) {
          log('--- $url ---');
          log(convert.jsonEncode(resString));
          log('');
        }
        if (resString is Map<String, dynamic>) {
          return resString;
        } else {
          return json.decode(resString);
        }
      }).asBroadcastStream();

  Stream<dynamic> get(String url, Map<String, dynamic> params,
          {bool printLog = false}) =>
      Stream<dynamic>.fromFuture(_dioGet(url, params)).map((dynamic resString) {
        if (printLog) {
          log('--- $url ---');
          log(convert.jsonEncode(resString));
          log('');
        }
        if (resString is Map<String, dynamic>) {
          return resString;
        } else {
          return json.decode(resString);
        }
      }).asBroadcastStream();

  Future<Map<String, dynamic>> _baseParameters(
      Map<String, dynamic> params) async {
    final Map<String, dynamic> commMap = <String, dynamic>{};
    params.forEach((String key, dynamic value) {
      commMap[key] = value;
    });
    return commMap;
  }

  Future<String> _baseParametersString(Map<String, dynamic> params) async {
    final Map<String, dynamic> commMap = <String, dynamic>{};
    params.forEach((String key,dynamic value) {
      commMap[key] = value;
    });
    return convert.jsonEncode(commMap);
  }

  Map<String, dynamic> _formatDict(DioError e) {
    if (e.type == DioErrorType.CONNECT_TIMEOUT) {
      return <String, dynamic>{'code': -100001, 'msg': '连接超时'};
    } else if (e.type == DioErrorType.SEND_TIMEOUT) {
      return <String, dynamic>{'code': -100002, 'msg': '请求超时'};
    } else if (e.type == DioErrorType.RECEIVE_TIMEOUT) {
      return <String, dynamic>{'code': -100003, 'msg': '响应超时'};
    } else if (e.type == DioErrorType.RESPONSE) {
      return <String, dynamic>{'code': -100004, 'msg': '服务器出现异常'};
    } else if (e.type == DioErrorType.CANCEL) {
      return <String, dynamic>{'code': -100005, 'msg': '请求取消'};
    } else {
      return <String, dynamic>{'code': -999999, 'msg': '未知错误'};
    }
  }
}
