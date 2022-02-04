import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/constants.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/entities/article.dart';
import '../../../domain/entities/category.dart';
import '../../../domain/usecases/get_categorized_articles_usecase.dart';

part 'list_bloc.freezed.dart';
part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final GetCategorizedArticlesUsecase getCategorizedArticlesUsecase;
  int page = DEFAULT_STARTPAGE;

  ListBloc(this.getCategorizedArticlesUsecase) : super(const ListState()) {
    on<_RefreshList>((event, emit) async {
      page = DEFAULT_STARTPAGE;
      emit(state.copyWith(
          pStatus: ListStatus.loading, pArticles: [], pHasMaxReached: false));
      add(_FetchList(event.category));
    });

    on<_FetchList>((event, emit) async {
      if (state.hasMaxReached) {
        emit(state);
      } else {
        emit(state.copyWith(pStatus: ListStatus.loading));
        final _dataResult =
            await getCategorizedArticlesUsecase(page, event.category);
        if (_dataResult is DataSuccess) {
          page++;
          final _articles = _dataResult.data ?? [];
          emit(state.copyWith(
              pStatus: ListStatus.success,
              pHasMaxReached: _articles.isEmpty,
              pArticles: List.of(state.articles)..addAll(_articles)));
        } else {
          emit(state.copyWith(pStatus: ListStatus.failed));
        }
      }
    });
  }
}
