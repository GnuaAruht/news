part of 'list_bloc.dart';

@freezed
class ListEvent with _$ListEvent {
  const factory ListEvent.fetchList(Category category) = _FetchList;
  const factory ListEvent.refreshList(Category category) = _RefreshList;
}
