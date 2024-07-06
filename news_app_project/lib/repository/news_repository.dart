import "dart:convert";

import "package:http/http.dart" as http;
import "package:news_app_project/models.dart";

class repository {
  Future<model_news> fetchnewsrepository() async {
    String url =
        "https://newsapi.org/v2/top-headlines?country=us&apiKey=69ed4687105b4e0981560482cdf259cc";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final body = jsonDecode(response.body);
      return model_news.fromJson(body);
    }
    throw Exception("error");
  }
}
