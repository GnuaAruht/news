import 'package:retrofit/retrofit.dart';

import '../../models/article_result_model.dart';

abstract class NewsRemoteDataSource {
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles({
    required int page,
    required String categoryValue,
    required int pageSize,
    required String country,
  });

  Future<HttpResponse<ArticleResultModel>> searchArticles({
    required int page,
    required int pageSize,
    required String query,
  });
}
