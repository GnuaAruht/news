import 'package:news/data/data_sources/remote/news_api.dart';
import 'package:retrofit/dio.dart';

import '../../models/article_result_model.dart';
import 'news_remote_data_source.dart';

class NewsRemoteDataSourceImpl extends NewsRemoteDataSource {
  final NewsApi newsApi;

  NewsRemoteDataSourceImpl({required this.newsApi});

  @override
  Future<HttpResponse<ArticleResultModel>> getTopHeadlineArticles(
      {required int page, required int pageSize}) {
    return newsApi.getTopHeadlineArticles(pageSize: pageSize, page: page);
  }
}
