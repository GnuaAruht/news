import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news/presentation/pages/category_list_page.dart';

import '../blocs/main/main_bloc.dart';
import '../widgets/article_list_widget.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _MainAppBar(),
      body: Center(
        child: BlocBuilder<MainBloc, MainState>(
          builder: (context, state) {
            return state.when(
                initial: () => const SizedBox.shrink(),
                loading: () => const Text('Loading'),
                fetched: (articles) => ArticleListWidget(articles: articles),
                error: (errorMessage) => Text(errorMessage));
          },
        ),
      ),
    );
  }
}

class _MainAppBar extends StatelessWidget with PreferredSizeWidget {
  const _MainAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Container(
        height: 50.0,
        color: Colors.red,
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
