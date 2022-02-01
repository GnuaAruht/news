part of 'list_bloc.dart';

enum PagingStatus { loading, success, failure, pending }

class ListState extends Equatable {
  final PagingStatus status;
  final List<Article> articles;
  final bool hasMaxReached;

  const ListState(
      {this.status = PagingStatus.loading,
      this.articles = const <Article>[],
      this.hasMaxReached = false});

  ListState copyWith(
      {PagingStatus? pStatus, List<Article>? pArticles, bool? pHasMaxReached}) {
    return ListState(
        status: pStatus ?? status,
        articles: pArticles ?? articles,
        hasMaxReached: pHasMaxReached ?? hasMaxReached);
  }

  @override
  List<Object?> get props => [status, articles, hasMaxReached];
}
