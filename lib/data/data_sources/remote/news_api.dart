import 'package:dio/dio.dart';
import 'package:news/core/constants/api_constrants.dart';
import 'package:news/data/models/article_result_model.dart';
import 'package:retrofit/retrofit.dart';
part 'news_api.g.dart';

@RestApi()
abstract class NewsApi {
  factory NewsApi(Dio dio, {String baseUrl}) = _NewsApi;

  @GET("/top-headlines")
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles(
      {@Query('country') String country = DEFAULT_COUNTRY,
      @Query('page') required int pageSize,
      @Query('pageSize') required int page});
}
