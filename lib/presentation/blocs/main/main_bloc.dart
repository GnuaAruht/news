import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/constants.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/entities/article.dart';
import '../../../domain/entities/category.dart';
import '../../../domain/usecases/get_headline_articles_usecase.dart';

part 'main_bloc.freezed.dart';
part 'main_event.dart';
part 'main_state.dart';

class MainBloc extends Bloc<MainEvent, MainState> {
  final GetTopHeadlineArticlesUsecase getTopHeadlineArticlesUsecase;

  MainBloc(this.getTopHeadlineArticlesUsecase)
      : super(const MainState.initial()) {
    on<_FetchNewsList>((event, emit) async {
      emit(const MainState.loading());
      // category general is default in main page
      final dataState = await getTopHeadlineArticlesUsecase(
          DEFAULT_STARTPAGE, Category.GENERAL);
      if (dataState is DataSuccess) {
        emit(MainState.fetched(dataState.data!));
      } else {
        emit(MainState.error(dataState.error!.message));
      }
    });
  }
}
