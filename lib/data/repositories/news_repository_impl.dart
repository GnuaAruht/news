import 'dart:io';

import 'package:dio/dio.dart';

import '../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';
import '../../domain/repositories/news_repository.dart';
import '../data_sources/local/news_local_data_source.dart';
import '../data_sources/remote/news_remote_data_source.dart';
import '../models/article_model.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NewsRemoteDataSource remoteDataSource;
  final NewsLocalDataSource localDataSource;

  NewsRepositoryImpl(
      {required this.remoteDataSource, required this.localDataSource});

  @override
  Future<DataState<List<Article>>> getTopHeadlineArticles(int page) async {
    try {
      final _response =
          await remoteDataSource.getTopHeadlineArticles(page: page);

      if (_response.response.statusCode == HttpStatus.ok) {
        final _models = _response.data.articles;
        return DataSuccess(
            data: _models.map((model) => model.toEntity()).toList());
      } else {
        return DataFailed(
          error: DioError(
            error: _response.response.statusMessage,
            response: _response.response,
            type: DioErrorType.response,
            requestOptions: _response.response.requestOptions,
          ),
        );
      }
    } on DioError catch (e) {
      return DataFailed(error: e);
    }
  }
}
