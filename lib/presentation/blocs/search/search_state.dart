part of 'search_bloc.dart';

enum SearchStatus { initial, loading, success, failed }

class SearchState extends Equatable {
  final SearchStatus status;
  final List<Article> articles;
  final bool hasMaxReached;

  const SearchState(
      {this.status = SearchStatus.initial,
      this.articles = const <Article>[],
      this.hasMaxReached = false});

  SearchState copyWith(
      {SearchStatus? pStatus, List<Article>? pArticles, bool? pHasMaxReached}) {
    return SearchState(
        status: pStatus ?? status,
        articles: pArticles ?? articles,
        hasMaxReached: pHasMaxReached ?? hasMaxReached);
  }

  @override
  List<Object?> get props => [status, articles, hasMaxReached];
}
