import 'package:news/core/constants/api_constrants.dart';
import 'package:news/data/models/article_result_model.dart';
import 'package:retrofit/retrofit.dart';

abstract class NewsRemoteDataSource {
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles({
    required int page,
    required int pageSize,
  });
}
