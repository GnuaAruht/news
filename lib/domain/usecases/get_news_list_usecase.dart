import '../../core/resources/data_state.dart';
import '../../core/usecases/usecase.dart';
import '../entities/article.dart';
import '../repositories/news_repository.dart';

class GetTopHeadlineArticlesUsecase extends Usecase<List<Article>, int> {
  final NewsRepository repository;

  GetTopHeadlineArticlesUsecase(this.repository);

  @override
  Future<DataState<List<Article>>> call(int page) async {
    return repository.getTopHeadlineArticles(page);
  }
}
