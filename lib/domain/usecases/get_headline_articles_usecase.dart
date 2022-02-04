import '../../core/constants/constants.dart';
import '../../core/resources/data_state.dart';
import '../entities/article.dart';
import '../repositories/news_repository.dart';

class GetTopHeadlineArticlesUsecase {
  final NewsRepository newsRepository;

  GetTopHeadlineArticlesUsecase(this.newsRepository);

  Future<DataState<List<Article>>> call(int page) {
    return newsRepository.getTopHeadlineArticles(
        page: page, pageSize: DEFAULT_PAGE_SIZE, country: 'us');
  }
}
