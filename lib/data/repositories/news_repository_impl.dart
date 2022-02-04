import 'dart:io';

import 'package:dio/dio.dart';
import 'package:news/core/constants/db_constants.dart';

import '../../core/constants/constants.dart';
import '../../core/network/network_info.dart';
import '../../core/resources/data_state.dart';
import '../../domain/entities/article.dart';
import '../../domain/entities/category.dart';
import '../../domain/repositories/news_repository.dart';
import '../data_sources/local/news_local_data_source.dart';
import '../data_sources/remote/news_remote_data_source.dart';
import '../models/article_model.dart';

class NewsRepositoryImpl extends NewsRepository {
  final NetworkInfo networkInfo;
  final NewsRemoteDataSource remoteDataSource;
  final NewsLocalDataSource localDataSource;

  NewsRepositoryImpl(
      {required this.networkInfo,
      required this.remoteDataSource,
      required this.localDataSource});

  @override
  Future<DataState<List<Article>>> getTopHeadlineArticles(
      {required int page,
      int pageSize = DEFAULT_PAGE_SIZE,
      String country = 'us'}) async {
    if (await networkInfo.isConnected) {
      try {
        final _response = await remoteDataSource.getTopHeadlineArticles(
            page: page,
            categoryValue: Category.GENERAL.value, // general is default
            pageSize: pageSize,
            country: country);

        if (_response.response.statusCode == HttpStatus.ok) {
          final _articleModels = _response.data.articles;
          localDataSource.clearCachedArticles(headlineArticlesBoxName);
          localDataSource.cacheArticles(
              headlineArticlesBoxName, _articleModels);
          return DataSuccess(
              data: _articleModels.map((model) => model.toEntity()).toList());
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
    } else {
      final _cachedArticles =
          localDataSource.getCachedArticles(headlineArticlesBoxName);
      return DataSuccess(
          data: _cachedArticles.map((model) => model.toEntity()).toList());
    }
  }

  @override
  Future<DataState<List<Article>>> getCategorizedArticles(
      {required int page,
      required Category category,
      int pageSize = DEFAULT_PAGE_SIZE,
      String country = 'us'}) async {
    try {
      final _response = await remoteDataSource.getTopHeadlineArticles(
          page: page,
          categoryValue: category.value,
          pageSize: pageSize,
          country: country);

      if (_response.response.statusCode == HttpStatus.ok) {
        final _articleModels = _response.data.articles;
        return DataSuccess(
            data: _articleModels.map((model) => model.toEntity()).toList());
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

  @override
  Future<DataState<List<Article>>> searchArticles(
      {required int page, required int pageSize, required String query}) async {
    try {
      final _response = await remoteDataSource.searchArticles(
          page: page, pageSize: pageSize, query: query);
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
