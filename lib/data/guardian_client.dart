import 'news_item.dart';

class TheGuardianClient {
  static const baseUrl = "https://content.guardianapis.com";
  static const apiKeyParam = "";
  static const queryParam = "q";

  TheGuardianClient(String apikey);

  Future<List<NewsItem>> getItems(String topic) {
    return [];
  }
}
