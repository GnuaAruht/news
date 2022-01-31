import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/core/constants/ui_constants.dart';
import 'package:news/presentation/pages/search_page.dart';

import '../../domain/entities/article.dart';
import '../blocs/main/main_bloc.dart';
import '../widgets/article_list_widget.dart';
import 'category_list_page.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _MainAppBar(),
      body: BlocBuilder<MainBloc, MainState>(
        builder: (context, state) {
          return state.when(
              initial: () => const SizedBox.shrink(),
              loading: () => const Text('Loading'),
              fetched: (articles) => _MainView(articles: articles),
              error: (errorMessage) => Text(errorMessage));
        },
      ),
    );
  }
}

class _MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const _MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: GestureDetector(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (_) => const SearchPage()));
        },
        child: Container(
          height: 50.0,
          color: Colors.red,
        ),
      ),
      actions: [
        IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (_) => const CategoryListPage()));
            },
            icon: const Icon(Icons.menu))
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _MainView extends StatelessWidget {
  final List<Article> articles;
  const _MainView({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: 200,
            color: Colors.yellow,
          ),
          _ArticleListWidget(articles: articles),
        ],
      ),
    );
  }
}

class _ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  const _ArticleListWidget({Key? key, required this.articles})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(DEFAULT_PADDING),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [Text('Recent News'), Text('View all')],
          ),
        ),
        ArticleListWidget(articles: articles),
        ElevatedButton(onPressed: () {}, child: const Text('View all'))
      ],
    );
  }
}
