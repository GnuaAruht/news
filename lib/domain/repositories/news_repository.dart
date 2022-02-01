import 'package:news/domain/entities/category.dart';

import '../../core/resources/data_state.dart';
import '../entities/article.dart';

abstract class NewsRepository {
  Future<DataState<List<Article>>> getTopHeadlineArticles(
      {required int page,
      required Category category,
      required int pageSize,
      required String country});
}
