import 'dart:convert';

import 'package:evently_app/constants.dart';
import 'package:http/http.dart' as http;

import 'models/movies_response.dart';


class ApiManager {
  static Future<Movie> getMovies(String categoryName) async {
    Uri url = Uri.https(Constant.BASE_URL, "/v2/top-headlines/sources",
        {"apiKey": Constant.API_KEY, "category": categoryName});
    http.Response response = await http.get(url);

    var json = jsonDecode(response.body);

    Movie movieResponse = Movie.fromJson(json);
    return movieResponse;
  }

  static Future<Movie> getNews(String sourceId) async {
    Uri url = Uri.https(Constant.BASE_URL, "/v2/everything", {
      "apiKey": Constant.API_KEY,
      "sources": sourceId,
    });
    http.Response response = await http.get(url);

    var json = jsonDecode(response.body);

    Movie movieResponse = Movie.fromJson(json);
    return movieResponse;
  }
}