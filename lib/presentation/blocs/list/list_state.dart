part of 'list_bloc.dart';

enum ListStatus { loading, success, failed }

class ListState extends Equatable {
  final ListStatus status;
  final List<Article> articles;
  final bool hasMaxReached;

  const ListState(
      {this.status = ListStatus.loading,
      this.articles = const <Article>[],
      this.hasMaxReached = false});

  ListState copyWith(
      {ListStatus? pStatus, List<Article>? pArticles, bool? pHasMaxReached}) {
    return ListState(
        status: pStatus ?? status,
        articles: pArticles ?? articles,
        hasMaxReached: pHasMaxReached ?? hasMaxReached);
  }

  @override
  List<Object?> get props => [status, articles, hasMaxReached];
}
