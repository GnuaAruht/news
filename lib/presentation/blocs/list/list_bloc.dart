import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../core/constants/constants.dart';
import '../../../core/resources/data_state.dart';
import '../../../domain/entities/article.dart';
import '../../../domain/entities/category.dart';
import '../../../domain/usecases/get_headline_articles_usecase.dart';

part 'list_bloc.freezed.dart';
part 'list_event.dart';
part 'list_state.dart';

class ListBloc extends Bloc<ListEvent, ListState> {
  final GetTopHeadlineArticlesUsecase getTopHeadlineArticlesUsecase;
  int page = DEFAULT_STARTPAGE;

  ListBloc(this.getTopHeadlineArticlesUsecase) : super(const ListState()) {
    on<_fetchList>((event, emit) async {
      if (state.hasMaxReached) {
        emit(state);
      } else {
        emit(state.copyWith(pStatus: ListStatus.loading));
        final _dataResult =
            await getTopHeadlineArticlesUsecase(page, event.category);
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
