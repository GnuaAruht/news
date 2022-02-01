import '../../core/constants/constants.dart';
import '../../core/resources/data_state.dart';
import '../entities/article.dart';
import '../entities/category.dart';
import '../repositories/news_repository.dart';

class GetTopHeadlineArticlesUsecase {
  final NewsRepository newsRepository;

  GetTopHeadlineArticlesUsecase(this.newsRepository);

  Future<DataState<List<Article>>> call(int page, Category category) {
    return newsRepository.getTopHeadlineArticles(
        page: page,
        category: category,
        pageSize: DEFAULT_PAGE_SIZE,
        country: 'us');
  }
}
