import 'package:clean_arch_bookly_app/core/resources/api/end_point.dart';
import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio;
  ApiService(this._dio);

  Future<Map<String, dynamic>> getRequest(String url) async {
    final response = await _dio.get("${EndPoint.baseUrl}$url");
    return response.data;
  }
}
