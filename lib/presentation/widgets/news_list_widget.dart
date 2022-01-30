import 'package:flutter/material.dart';
import 'package:news/domain/entities/article.dart';

class NewsListWidget extends StatelessWidget {
  final List<Article> articles;
  const NewsListWidget({Key? key, required this.articles}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: articles.length,
        padding: const EdgeInsets.all(8.0),
        separatorBuilder: (context, index) {
          return const SizedBox(
            height: 10.0,
          );
        },
        itemBuilder: (context, index) {
          return _NewsListItemWidget(
            article: articles[index],
          );
        });
  }
}

class _NewsListItemWidget extends StatelessWidget {
  final Article article;
  const _NewsListItemWidget({Key? key, required this.article})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      color: Colors.yellow,
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Container(
            height: 100,
            width: 120,
            color: Colors.red,
          ),
          const SizedBox(
            width: 8.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    article.title,
                    maxLines: 2,
                    style: const TextStyle(overflow: TextOverflow.ellipsis),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [Text(article.source.name), Text('12/12/12')],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
