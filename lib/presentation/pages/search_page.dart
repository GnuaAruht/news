import 'package:flutter/material.dart';

import '../../domain/entities/category.dart';
import '../../temp.dart';
import '../widgets/article_list_widget.dart';

class SearchPage extends StatefulWidget {
  final Category category;
  final String searchQuery;
  const SearchPage(
      {Key? key, this.category = Category.GENERAL, this.searchQuery = ''})
      : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  final _searchController = TextEditingController();

  @override
  void initState() {
    _searchController.addListener(() {
      // todo: search articles
    });
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _SearchAppBar(
          category: widget.category,
          searchController: _searchController,
          onClearSearch: () {
            _searchController.clear();
          }),
      body: ArticleListWidget(articles: tempArticleList),
    );
  }
}

class _SearchAppBar extends StatelessWidget with PreferredSizeWidget {
  final Category category;
  final TextEditingController searchController;
  final VoidCallback onClearSearch;
  const _SearchAppBar(
      {Key? key,
      required this.category,
      required this.searchController,
      required this.onClearSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: _SearchWidget(
        category: category,
        searchController: searchController,
        onClearSearch: onClearSearch,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _SearchWidget extends StatelessWidget {
  final Category category;
  final TextEditingController searchController;
  final VoidCallback onClearSearch;
  const _SearchWidget(
      {Key? key,
      required this.category,
      required this.searchController,
      required this.onClearSearch})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: searchController,
      decoration: InputDecoration(
          hintText: 'Search ${category.title} News',
          border: InputBorder.none,
          suffix: const Icon(Icons.close)),
    );
  }
}
