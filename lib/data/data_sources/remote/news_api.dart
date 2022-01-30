import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constants/api_constants.dart';
import '../../models/article_result_model.dart';

part 'news_api.g.dart';

@RestApi()
abstract class NewsApi {
  factory NewsApi(Dio dio, {String baseUrl}) = _NewsApi;

  @GET(TOPHEADLINES_ENDPOINT)
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles(
      {@Query('country') String country = DEFAULT_COUNTRY,
      @Query('page') required int page,
      @Query('pageSize') int pageSize = DEFAULT_PAGE_SIZE});
}
