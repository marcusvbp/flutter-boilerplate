import 'package:dio/dio.dart';

enum ENV { PROD, HOMOLOG, LOCAL }

class AppConfig {
  static final ENV enviroment = ENV.LOCAL;

  static final Map<ENV, Map<String, dynamic>> envVars = {
    ENV.LOCAL: {
      'server_url': 'http://localhost/api',
    },
    ENV.HOMOLOG: {},
    ENV.PROD: {}
  };

  static Map<String, dynamic> get env => envVars[enviroment];

  static Dio getDioInstance({String token}) {
    Dio dio = Dio()
      ..options.headers = {'Content-Type': 'application/json'}
      ..options.baseUrl = envVars[enviroment]['server_url'];

    if (token != null) dio.options.headers['Authorization'] = 'Bearer $token';

    dio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError e) {
          if (e.response != null) {
            print('${e.response.request.uri}:');
            print('${e.response.statusMessage} (${e.response.statusCode})');
          }
          return e;
        },
      ),
    );

    return dio;
  }
}
