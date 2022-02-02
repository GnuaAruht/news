import 'package:flutter/material.dart';

import '../../core/constants/ui_constants.dart';
import '../../domain/entities/article.dart';
import 'article_item_widget.dart';

class ArticleListWidget extends StatelessWidget {
  final List<Article> articles;
  const ArticleListWidget({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: articles.length,
        padding: const EdgeInsets.all(8.0),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: DEFAULT_PADDING,
          );
        },
        itemBuilder: (context, index) {
          return ArticleItemWidget(
            article: articles[index],
          );
        });
  }
}
