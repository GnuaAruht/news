import '../../core/constants/constants.dart';
import '../../core/resources/data_state.dart';
import '../entities/article.dart';
import '../repositories/news_repository.dart';

class SearchArticleUsecase {
  final NewsRepository repository;

  SearchArticleUsecase(this.repository);

  Future<DataState<List<Article>>> call(int page, String query) {
    return repository.searchArticles(
        page: page, pageSize: DEFAULT_PAGE_SIZE, query: query);
  }
}
