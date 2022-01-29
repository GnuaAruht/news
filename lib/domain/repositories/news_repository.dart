import 'package:news/core/resources/data_state.dart';
import 'package:news/domain/entities/article.dart';

abstract class NewsRepository {
  Future<DataState<List<Article>>> getTopHeadlineArticles();
}
