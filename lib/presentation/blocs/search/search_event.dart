part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.started(Category category, String? text) = _Started;
  const factory SearchEvent.changeText(String text) = _ChangeText;
  const factory SearchEvent.fetchNext() = _FetchNext;
  const factory SearchEvent.clearText() = _ClearText;
}
