import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../../core/constants/api_constants.dart';
import '../../models/article_result_model.dart';

part 'news_api.g.dart';

@RestApi()
abstract class NewsApi {
  factory NewsApi(Dio dio, {String baseUrl}) = _NewsApi;

  @GET(TOPHEADLINES_ENDPOINT)
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('country') required String country,
    @Query('category') required String category,
  });

  @GET('/everything')
  Future<HttpResponse<ArticleResultModel>> searchArticles({
    @Query('page') required int page,
    @Query('pageSize') required int pageSize,
    @Query('qInTitle') required String qInTitle,
  });
}
