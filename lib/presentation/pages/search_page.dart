import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/presentation/widgets/loading_failed_widget.dart';

import '../../core/constants/constants.dart';
import '../../domain/entities/article.dart';
import '../blocs/search/search_bloc.dart';
import '../widgets/article_item_widget.dart';
import '../widgets/loading_list_widget.dart';

class SearchPage extends StatefulWidget {
  static const routeName = '/search';

  const SearchPage({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  late SearchBloc _bloc;
  final _searchController = TextEditingController();

  final ScrollController _scrollController = ScrollController();

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void initState() {
    _bloc = context.read<SearchBloc>();
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_isBottom) {
      _bloc.add(const SearchEvent.fetchNext());
    }
  }

  @override
  void dispose() {
    _searchController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _SearchAppBar(
          searchController: _searchController,
          onSearch: (_) {
            _bloc.add(SearchEvent.search(_searchController.text));
          },
          onClearSearch: () {
            _searchController.clear();
          }),
      body: RefreshIndicator(
        onRefresh: () async {
          _bloc.add(SearchEvent.refresh(_searchController.text));
        },
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            if (state.articles.isNotEmpty) {
              return _ArticleListWidget(
                scrollController: _scrollController,
                articles: state.articles,
                hasMaxReached: state.hasMaxReached,
              );
            } else {
              switch (state.status) {
                case SearchStatus.initial:
                  return const _SearchInitWidget();
                case SearchStatus.loading:
                  return const LoadingListWidget();
                case SearchStatus.failed:
                  return LoadingFailedWidget(
                      icon: CupertinoIcons.search,
                      errorMessage: 'Search Failed',
                      onRetry: () {
                        _bloc.add(SearchEvent.refresh(_searchController.text));
                      });
                case SearchStatus.success:
                  return Container();
              }
            }
          },
        ),
      ),
    );
  }
}

class _SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final TextEditingController searchController;
  final ValueChanged<String?> onSearch;
  final VoidCallback onClearSearch;
  const _SearchAppBar(
      {Key? key,
      required this.searchController,
      required this.onSearch,
      required this.onClearSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      title: _SearchWidget(
        searchController: searchController,
        onSearch: onSearch,
        onClearSearch: onClearSearch,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchWidget extends StatelessWidget {
  final TextEditingController searchController;
  final ValueChanged<String?> onSearch;
  final VoidCallback onClearSearch;
  const _SearchWidget(
      {Key? key,
      required this.searchController,
      required this.onSearch,
      required this.onClearSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      textInputAction: TextInputAction.search,
      onSubmitted: onSearch,
      style: const TextStyle(fontSize: 18.0),
      decoration: InputDecoration(
          hintText: 'Search News',
          border: InputBorder.none,
          suffix: IconButton(
              onPressed: () {
                searchController.clear();
              },
              icon: const Icon(Icons.close))),
    );
  }
}

class _ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  final ScrollController scrollController;
  final bool hasMaxReached;
  const _ArticleListWidget(
      {Key? key,
      required this.articles,
      required this.scrollController,
      required this.hasMaxReached})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: scrollController,
        itemCount: hasMaxReached ? articles.length : articles.length + 1,
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        itemBuilder: (context, index) {
          return index < articles.length
              ? ArticleItemWidget(article: articles[index])
              : const _LoadingItemWidget();
        });
  }
}

class _SearchInitWidget extends StatelessWidget {
  const _SearchInitWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            CupertinoIcons.search,
            size: 60.0,
            color: Colors.black.withOpacity(0.4),
          ),
          Text('Search News',
              style: TextStyle(
                  fontSize: 18.0, color: Colors.black.withOpacity(0.5))),
        ],
      ),
    );
  }
}

class _LoadingItemWidget extends StatelessWidget {
  const _LoadingItemWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBloc, SearchState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        switch (state.status) {
          case SearchStatus.failed:
            return Container(
              padding: const EdgeInsets.all(DEFAULT_PADDING),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text('Loading failed'),
                  TextButton(
                      onPressed: () {
                        // todo: retry fetch list
                      },
                      child: const Text('Retry'))
                ],
              ),
            );
          default:
            return const Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: SizedBox(
                  height: 40,
                  width: 40,
                  child: CircularProgressIndicator(),
                ),
              ),
            );
        }
      },
    );
  }
}
