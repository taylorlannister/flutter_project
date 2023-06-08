

import 'package:dio/dio.dart';
// import 'package:flutter_etamine_app/Base/Instance/user_share_instance.dart';
// import 'package:flutter_etamine_app/NetWork/API/Config/api_config.dart';

class AuthHeaderInterceptor extends Interceptor {

  // @override

  // Future<dynamic> onRequest(RequestOptions options) async{
  //   final Map<String, String> headers = {};
  //   if (UserShareInstance.instance.tokenModel != null){
  //     headers['accessToken'] = UserShareInstance.instance.tokenModel.body.accessToken;
  //     headers['userId'] = UserShareInstance.instance.tokenModel.body.userId;
  //     headers['orgCode'] = UserShareInstance.instance.tokenModel.body.orgCode;
  //   }
  //   headers['Content-type'] = 'application/json';
  //   headers['authen-type'] = 'V2';
  //   headers['clientId'] = APIConfig.getClientID();
  //   headers['channelPlatform'] = 'supplier';
  //   options.headers=headers;
  //   return super.onRequest(options);
  // }
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    // TODO: implement onRequest  
    super.onRequest(options, handler);
  }

  
}