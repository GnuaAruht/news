import '../../core/constants/constants.dart';
import '../../core/resources/data_state.dart';
import '../entities/article.dart';
import '../entities/category.dart';
import '../repositories/news_repository.dart';

class GetCategorizedArticlesUsecase {
  final NewsRepository newsRepository;

  GetCategorizedArticlesUsecase(this.newsRepository);

  Future<DataState<List<Article>>> call(int page, Category category) {
    return newsRepository.getCategorizedArticles(
        category: category,
        page: page,
        pageSize: DEFAULT_PAGE_SIZE,
        country: 'us');
  }
}
