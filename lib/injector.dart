import 'package:get_it/get_it.dart';
import 'package:dio/dio.dart';
import 'package:news/core/constants/api_key.dart';
import 'package:news/core/constants/constants.dart';
import 'package:news/data/data_sources/local/news_local_data_source.dart';
import 'package:news/data/data_sources/local/news_local_data_source_impl.dart';
import 'package:news/data/data_sources/remote/news_api.dart';
import 'package:news/data/data_sources/remote/news_remote_data_source.dart';
import 'package:news/data/data_sources/remote/news_remote_datasource_impl.dart';
import 'package:news/data/repositories/news_repository_impl.dart';
import 'package:news/domain/repositories/news_repository.dart';
import 'package:news/domain/usecases/get_news_list_usecase.dart';
import 'package:news/presentation/blocs/main/main_bloc.dart';

GetIt injector = GetIt.instance;

Future<void> initDepedencies() async {
  _injectNetworkConfig();
  _injectApi();
  _injectDataSource();
  _injectRepositories();
  _injectUsecases();
  _injectBlocs();
}

void _injectNetworkConfig() {
  injector.registerSingleton<Dio>(Dio(BaseOptions(
    baseUrl: BASE_URL,
    headers: <String, dynamic>{'X-Api-Key': API_KEY1},
  )));
}

void _injectApi() {
  injector.registerSingleton<NewsApi>(NewsApi(injector()));
}

void _injectDataSource() {
  injector.registerSingleton<NewsRemoteDataSource>(
      NewsRemoteDataSourceImpl(newsApi: injector()));
  injector.registerSingleton<NewsLocalDataSource>(NewsLocalDataSourceImpl());
}

void _injectRepositories() {
  injector.registerSingleton<NewsRepository>(NewsRepositoryImpl(
      remoteDataSource: injector(), localDataSource: injector()));
}

void _injectUsecases() {
  injector.registerSingleton<GetTopHeadlineArticlesUsecase>(
      GetTopHeadlineArticlesUsecase(injector()));
}

void _injectBlocs() {
  injector.registerFactory(() => MainBloc(injector()));
}
