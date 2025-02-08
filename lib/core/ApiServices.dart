import 'package:dio/dio.dart';

class APIServices {
  final String baseUrl = 'https://fakestoreapi.com/';
  final Dio dio;
  APIServices(this.dio);
  Future<Map<String, dynamic>> post(
      {required endpoint, required Map<String, dynamic> data}) async {
    var response = await dio.post(baseUrl + endpoint,
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ));
    return response.data;
  }

  Future<List<dynamic>>get(
      String endpoint,  [Map<String, dynamic>? data]) async {
    var response = await dio.get(baseUrl + endpoint,
        data: data,
        options: Options(
          headers: {'Content-Type': 'application/json'},
        ));
    return response.data;
  }
}
