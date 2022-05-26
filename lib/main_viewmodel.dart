import 'dart:convert';
import 'dart:io';

import 'package:daryo_app_clone/models/news_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

import 'api_response.dart';

class MainViewModel extends ChangeNotifier {
  ApiResponse _apiResponse = ApiResponse.initial('Empty');
  List<Articles>? articlesList = [];

  ApiResponse get response {
    return _apiResponse;
  }

  List<Articles>? get articles {
    return articlesList;
  }

  Future<ApiResponse> fetchNews() async {
    String API_KEY = "1b1677681e3f4c6980f50921844ba0e0";

    String url = "https://newsapi.org/v2/everything"
        "?q=tesla"
        "&from=2022-04-26"
        "&sortBy=publishedAt"
        "&apiKey=$API_KEY";

    Uri myUrl = Uri.parse(url);

    try {
      var response = await http.get(myUrl);
      Map<String, dynamic> data = jsonDecode(response.body);

      articlesList?.clear();

      articlesList = NewsResponse.fromJson(data).articles;

      _apiResponse = ApiResponse.success(articlesList);
    } catch (exception) {
      if (exception is SocketException) {
        _apiResponse = ApiResponse.error("No Internet Connection");
      } else {
        _apiResponse = ApiResponse.error(exception.toString());
      }
    }

    return _apiResponse;
  }
}
