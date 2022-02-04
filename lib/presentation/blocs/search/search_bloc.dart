import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/constants.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/entities/article.dart';
import '../../../domain/usecases/search_articles_usecase.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchArticleUsecase searchArticleUsecase;
  int page = DEFAULT_STARTPAGE;
  String currentQuery = '';

  SearchBloc(this.searchArticleUsecase) : super(const SearchState()) {
    on<_Search>((event, emit) async {
      final _query = event.text;
      if (_query != null && _query.isNotEmpty) {
        page = DEFAULT_STARTPAGE;
        currentQuery = _query;
        emit(state.copyWith(pArticles: [], pStatus: SearchStatus.loading));
        final _dataState = await searchArticleUsecase(page, _query);
        if (_dataState is DataSuccess) {
          page++;
          final List<Article> _articles = _dataState.data ?? [];
          emit(state.copyWith(
              pArticles: _articles,
              pStatus: SearchStatus.success,
              pHasMaxReached: _articles.isEmpty));
        } else {
          emit(state.copyWith(pStatus: SearchStatus.failed, pArticles: []));
        }
      }
    });

    on<_FetchNext>((event, emit) async {
      if (state.hasMaxReached) emit(state);
      emit(state.copyWith(pStatus: SearchStatus.loading));
      final _dataState = await searchArticleUsecase(page, currentQuery);
      if (_dataState is DataSuccess) {
        page++;
        final _articles = _dataState.data ?? [];
        emit(state.copyWith(
            pArticles: List.of(state.articles)..addAll(_articles),
            pStatus: SearchStatus.success,
            pHasMaxReached: _articles.isEmpty));
      } else {
        emit(state.copyWith(pStatus: SearchStatus.failed));
      }
    });

    on<_Refresh>((event, emit) async {
      page = DEFAULT_STARTPAGE;
      emit(state.copyWith(
          pStatus: SearchStatus.loading, pHasMaxReached: false, pArticles: []));
      add(_Search(event.text));
    });

    on<_ClearText>((event, emit) async {
      // set search status to initial and hasMaxReached false
      emit(
          state.copyWith(pStatus: SearchStatus.initial, pHasMaxReached: false));
    });
  }
}
