import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'core/constants/api_key_sample.dart';
import 'core/constants/constants.dart';
import 'core/network/network_info.dart';
import 'data/data_sources/local/news_local_data_source.dart';
import 'data/data_sources/local/news_local_data_source_impl.dart';
import 'data/data_sources/remote/news_api.dart';
import 'data/data_sources/remote/news_remote_data_source.dart';
import 'data/data_sources/remote/news_remote_datasource_impl.dart';
import 'data/repositories/news_repository_impl.dart';
import 'domain/repositories/news_repository.dart';
import 'domain/usecases/get_categorized_articles_usecase.dart';
import 'domain/usecases/get_headline_articles_usecase.dart';
import 'domain/usecases/search_articles_usecase.dart';
import 'presentation/blocs/list/list_bloc.dart';
import 'presentation/blocs/main/main_bloc.dart';
import 'presentation/blocs/search/search_bloc.dart';

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
    headers: <String, dynamic>{'X-Api-Key': API_KEY},
    connectTimeout: 100000,
  )));
  injector.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(DataConnectionChecker()));
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
      networkInfo: injector(),
      remoteDataSource: injector(),
      localDataSource: injector()));
}

void _injectUsecases() {
  injector.registerSingleton<GetTopHeadlineArticlesUsecase>(
      GetTopHeadlineArticlesUsecase(injector()));

  injector.registerSingleton<GetCategorizedArticlesUsecase>(
      GetCategorizedArticlesUsecase(injector()));
  injector.registerSingleton<SearchArticleUsecase>(
      SearchArticleUsecase(injector()));
}

void _injectBlocs() {
  injector.registerFactory(() => MainBloc(injector()));
  injector.registerFactory(() => ListBloc(injector()));
  injector.registerFactory(() => SearchBloc(injector()));
}
