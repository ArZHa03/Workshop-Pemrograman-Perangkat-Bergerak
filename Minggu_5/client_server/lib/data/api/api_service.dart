import 'dart:convert';

import 'package:http/http.dart' as http;

import '../model/article.dart';

class ApiService {
  static const String _baseUrl = 'https://newsapi.org/v2/';
  static const String _apiKey = '2a98b22eb25147fc8b15c386fdb99b9b';
  static const String _q = 'keyword';

  Future<ArticlesResult> everything() async {
    final response = await http
        .get(Uri.parse("${_baseUrl}everything?q=$_q&apiKey=$_apiKey"));
    if (response.statusCode == 200) {
      return ArticlesResult.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load articles');
    }
  }
}