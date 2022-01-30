import 'package:retrofit/dio.dart';

import '../../models/article_result_model.dart';
import 'news_api.dart';
import 'news_remote_data_source.dart';

class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final NewsApi newsApi;

  NewsRemoteDataSourceImpl({required this.newsApi});

  @override
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles(
      {required int page}) {
    return newsApi.getTopHeadlineArticles(page: page);
  }
}
