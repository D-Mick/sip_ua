import 'dart:io';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

Logger logger = Logger();

logDioError(DioError error) {
  try {
    logger.e("${error.response?.realUri} \n"
        "${error.response?.data} \n"
        "${error.response?.headers} \n"
        "${error.response?.statusCode} ${error.response?.statusMessage} \n"
        "${error.response?.data} \n"
        "${error.message}");
  } catch (e) {
    rethrow;
  }
}

logSocketError(SocketException error) {
  try {
    logger.e("${error.address}\n"
        "${error.port}\n"
        "${error.message}\n"
        "${error.osError}");
  } catch (e) {
    rethrow;
  }
}

logResponse(Response response) {
  try {
    logger.i("${response.realUri} \n"
        "${response.headers} \n"
        "${response.statusCode} ${response.statusMessage} \n"
        "${response.data}");
  } catch (e) {
    rethrow;
  }
}

log(Object object) {
  try {
    logger.d(object);
  } catch (e) {
    rethrow;
  }
}
