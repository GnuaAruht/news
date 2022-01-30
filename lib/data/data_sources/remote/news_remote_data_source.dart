import 'package:retrofit/retrofit.dart';

import '../../models/article_result_model.dart';

abstract class NewsRemoteDataSource {
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles({
    required int page,
  });
}
