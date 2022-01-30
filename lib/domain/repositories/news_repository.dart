import '../../core/resources/data_state.dart';
import '../entities/article.dart';

abstract class NewsRepository {
  Future<DataState<List<Article>>> getTopHeadlineArticles(int page);
}
