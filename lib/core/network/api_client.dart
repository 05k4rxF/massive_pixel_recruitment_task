import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;
import '../error/exceptions.dart';

class ApiClient {
  final http.Client client;
  static const Duration _timeoutDuration = Duration(seconds: 30);

  ApiClient({http.Client? client}) : client = client ?? http.Client();

  Future<Map<String, dynamic>> get(String url) async {
    try {
      final response = await client.get(Uri.parse(url)).timeout(_timeoutDuration);

      if (response.statusCode == 200) {
        return json.decode(response.body) as Map<String, dynamic>;
      } else {
        throw ServerException('Server error: ${response.statusCode}');
      }
    } on TimeoutException {
      throw NetworkException('Request timeout: The server took too long to respond');
    } on http.ClientException {
      throw NetworkException('Network error: Unable to connect to server');
    } catch (e) {
      if (e is ServerException || e is NetworkException) {
        rethrow;
      }
      throw ServerException('Unexpected error: $e');
    }
  }

  Future<List<dynamic>> getList(String url) async {
    try {
      final response = await client.get(Uri.parse(url)).timeout(_timeoutDuration);

      if (response.statusCode == 200) {
        return json.decode(response.body) as List<dynamic>;
      } else {
        throw ServerException('Server error: ${response.statusCode}');
      }
    } on TimeoutException {
      throw NetworkException('Request timeout: The server took too long to respond');
    } on http.ClientException {
      throw NetworkException('Network error: Unable to connect to server');
    } catch (e) {
      if (e is ServerException || e is NetworkException) {
        rethrow;
      }
      throw ServerException('Unexpected error: $e');
    }
  }
}
