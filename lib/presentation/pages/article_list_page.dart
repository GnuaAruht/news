import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/category.dart';
import '../../temp.dart';
import '../widgets/article_list_widget.dart';
import 'search_page.dart';

class ArticleListPage extends StatelessWidget {
  final Category category;
  const ArticleListPage({Key? key, this.category = Category.GENERAL})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
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
        ),
        body: ArticleListWidget(
          articles: tempArticleList,
        ));
  }
}
