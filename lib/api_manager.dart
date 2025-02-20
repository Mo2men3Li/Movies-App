// import 'dart:convert';
//
// import 'package:http/http.dart' as http;
//
//
// class ApiManager {
//   static Future<SourcesResponse> getSources(String categoryName) async {
//     Uri url = Uri.https(Constant.BASE_URL, "/v2/top-headlines/sources",
//         {"apiKey": Constant.API_KEY, "category": categoryName});
//     http.Response response = await http.get(url);
//
//     var json = jsonDecode(response.body);
//
//     SourcesResponse sourcesResponse = SourcesResponse.fromJson(json);
//     return sourcesResponse;
//   }
//
//   static Future<NewsResponse> getNews(String sourceId) async {
//     Uri url = Uri.https(Constant.BASE_URL, "/v2/everything", {
//       "apiKey": Constant.API_KEY,
//       "sources": sourceId,
//     });
//     http.Response response = await http.get(url);
//
//     var json = jsonDecode(response.body);
//
//     NewsResponse newsResponse = NewsResponse.fromJson(json);
//     return newsResponse;
//   }
// }