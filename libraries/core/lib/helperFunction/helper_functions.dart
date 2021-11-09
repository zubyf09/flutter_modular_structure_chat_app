
import 'package:dio/dio.dart';


bool isNullOrEmpty(String text) {
  if (text == null || text.isEmpty)
    return true;
  else
    return false;
}


bool isValidResponse(Response response) {
  return (response != null ||
      response.statusCode == 200 ||
      response.data != null);
}
