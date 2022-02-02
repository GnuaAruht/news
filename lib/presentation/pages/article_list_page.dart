import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../core/constants/ui_constants.dart';
import '../../domain/entities/article.dart';
import '../../domain/entities/category.dart';
import '../blocs/list/list_bloc.dart';
import '../widgets/article_item_widget.dart';
import 'search_page.dart';

class ArticleListPage extends StatelessWidget {
  final Category category;
  const ArticleListPage({Key? key, this.category = Category.GENERAL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: _Appbar(category: category),
        body: BlocBuilder<ListBloc, ListState>(
          builder: (context, state) {
            switch (state.status) {
              case PagingStatus.loading:
                return const Text('Loading ...');
              case PagingStatus.failure:
                return const Text('Failure');
              default:
                return _ArticleListWidget(
                    category: category,
                    articles: state.articles,
                    hasMaxReached: state.hasMaxReached);
            }
          },
        ));
  }
}

class _Appbar extends StatelessWidget with PreferredSizeWidget {
  const _Appbar({
    Key? key,
    required this.category,
  }) : super(key: key);

  final Category category;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      elevation: 0.0,
      title: Text('${category.title} News'),
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (_) => SearchPage(
                      category: category,
                    )));
          },
        )
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _ArticleListWidget extends StatefulWidget {
  final Category category;
  final List<Article> articles;
  final bool hasMaxReached;
  const _ArticleListWidget(
      {Key? key,
      required this.category,
      required this.articles,
      required this.hasMaxReached})
      : super(key: key);

  @override
  State<_ArticleListWidget> createState() => _ArticleListWidgetState();
}

class _ArticleListWidgetState extends State<_ArticleListWidget> {
  final ScrollController _scrollController = ScrollController();
  late final ListBloc _bloc;

  @override
  void initState() {
    _bloc = context.read<ListBloc>();
    _scrollController.addListener(_onScroll);
    super.initState();
  }

  void _onScroll() {
    if (_isBottom && _bloc.state.status != PagingStatus.pending) {
      _bloc.add(ListEvent.fetchList(widget.category));
    }
  }

  bool get _isBottom {
    if (!_scrollController.hasClients) return false;
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.offset;
    return currentScroll >= (maxScroll * 0.9);
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        controller: _scrollController,
        itemCount: widget.hasMaxReached
            ? widget.articles.length
            : widget.articles.length + 1,
        padding: const EdgeInsets.all(DEFAULT_PADDING),
        itemBuilder: (context, index) {
          return index < widget.articles.length
              ? ArticleItemWidget(article: widget.articles[index])
              : _LoadingItemWidget(
                  category: widget.category,
                );
        });
  }
}

class _LoadingItemWidget extends StatelessWidget {
  final Category category;
  const _LoadingItemWidget({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListBloc, ListState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        switch (state.status) {
          case PagingStatus.pending:
            return Container(
              padding: const EdgeInsets.all(DEFAULT_PADDING),
              alignment: Alignment.center,
              child: Column(
                children: [
                  const Text('Loading failed'),
                  TextButton(
                      onPressed: () {
                        context
                            .read<ListBloc>()
                            .add(ListEvent.fetchList(category));
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
