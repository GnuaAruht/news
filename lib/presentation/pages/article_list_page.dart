import 'package:flutter/material.dart';
import 'package:news/domain/entities/category.dart';
import 'package:news/presentation/widgets/article_list_widget.dart';
import 'package:news/temp.dart';

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
        ),
        body: ArticleListWidget(
          articles: tempArticleList,
        ));
  }
}
