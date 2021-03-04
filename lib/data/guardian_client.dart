import 'news_item.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'news_item.dart';

class TheGuardianClient {
  static const baseUrl = "https://content.guardianapis.com";
  static const apiKeyParam = "";
  static const queryParam = "q";
  final String apikey;
  TheGuardianClient(this.apikey);

  Future<List<NewsItem>> getItems(String topic) async {
    var url =
        "$baseUrl/search?api-key=$apikey&$queryParam=\"$topic\"&&order-by=newest";
    print('URL $url');

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      int itemCount = jsonResponse['response']['total'];
      print("We got $itemCount items");

      if (itemCount == 0) {
        print("get got nothing");
        return [];
      }

      List<NewsItem> output = [];
      for (var item in jsonResponse['response']['results']) {
        output.add(NewsItem.fromJson(item));
      }

      return output;
    }

    return Future.error("error");
  }
}
