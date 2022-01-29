import 'package:news/core/resources/data_state.dart';
import 'package:news/core/usecases/usecase.dart';
import 'package:news/domain/entities/article.dart';
import 'package:news/domain/repositories/news_repository.dart';

class GetTopHeadlineArticlesUsecase extends Usecase<List<Article>, void> {
  final NewsRepository repository;

  GetTopHeadlineArticlesUsecase(this.repository);

  @override
  Future<DataState<List<Article>>> call(void param) async {
    return repository.getTopHeadlineArticles();
  }
}
