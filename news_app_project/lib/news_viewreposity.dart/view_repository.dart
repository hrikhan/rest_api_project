import 'package:http/http.dart';
import 'package:news_app_project/models.dart';
import 'package:news_app_project/repository/news_repository.dart';

class view_model {
  final repo = repository();

  Future<model_news> fetchnewsrepository() async {
    final response = await repo.fetchnewsrepository();
    return response;
  }
}
