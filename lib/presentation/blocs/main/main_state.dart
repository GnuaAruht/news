part of 'main_bloc.dart';

@freezed
class MainState with _$MainState {
  const factory MainState.loading() = _$MainLoading;
  const factory MainState.fetched(List<Article> articles) = _$MainFetched;
  const factory MainState.error(String errorMessage) = _$MainError;
}
