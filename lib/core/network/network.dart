import 'package:dio/dio.dart';
class DioUtil{
  static Dio? _instance;
//method for getting dio instance
  static Dio? getInstance() {
    _instance ??= createDioInstance();
    return _instance;
  }

  static Dio createDioInstance() {
    var dio = Dio();
    dio.interceptors.clear();
    dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) {
      return handler.next(options);//modify your request
    }, onResponse: (response, handler) {
      //on success it is getting called here
      return handler.next(response);
    }, onError: (DioException e, handler) async {

      if (e.response != null) {
        if (e.response?.statusCode == 401) {//catch the 401 here
          // call refresh Token API
        } else {
          handler.next(e);
        }
      }else{
        handler.next(e);
      }

    }));
    return dio;
  }
}