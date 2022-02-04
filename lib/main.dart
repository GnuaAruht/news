import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/config/db_config.dart';
import 'core/config/theme.dart';
import 'domain/entities/article.dart';
import 'domain/entities/category.dart';
import 'injector.dart';
import 'presentation/blocs/list/list_bloc.dart';
import 'presentation/blocs/main/main_bloc.dart';
import 'presentation/blocs/search/search_bloc.dart';
import 'presentation/pages/article_detail_page.dart';
import 'presentation/pages/article_list_page.dart';
import 'presentation/pages/category_list_page.dart';
import 'presentation/pages/main_page.dart';
import 'presentation/pages/search_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initDepedencies();
  await initDbConfig();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'News App',
      debugShowCheckedModeBanner: false,
      theme: buildlightTheme(context),
      onGenerateRoute: (settings) {
        if (settings.name == CategoryListPage.routeName) {
          return MaterialPageRoute(builder: (_) => const CategoryListPage());
        } else if (settings.name == ArticleListPage.routeName) {
          final _category = settings.arguments as Category? ?? Category.GENERAL;
          return MaterialPageRoute(builder: (_) {
            return BlocProvider(
              create: (context) =>
                  injector.get<ListBloc>()..add(ListEvent.fetchList(_category)),
              child: ArticleListPage(category: _category),
            );
          });
        } else if (settings.name == ArticleDetailPage.routeName) {
          final _article = settings.arguments as Article;
          return MaterialPageRoute(builder: (_) {
            return ArticleDetailPage(article: _article);
          });
        } else if (settings.name == SearchPage.routeName) {
          return MaterialPageRoute(builder: (_) {
            return BlocProvider(
              create: (context) => injector.get<SearchBloc>(),
              child: const SearchPage(),
            );
          });
        } else {
          assert(false, 'Need to implement ${settings.name}');
          return null;
        }
      },
      home: BlocProvider<MainBloc>(
        create: (context) =>
            injector.get<MainBloc>()..add(const MainEvent.fetchArticles()),
        child: const MainPage(),
      ),
    );
  }
}
