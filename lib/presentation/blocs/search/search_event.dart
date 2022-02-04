part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.search(String? text) = _Search;
  const factory SearchEvent.fetchNext() = _FetchNext;
  const factory SearchEvent.clearText() = _ClearText;
  const factory SearchEvent.refresh(String? text) = _Refresh;
}
