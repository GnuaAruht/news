import 'package:flutter/material.dart';

import '../../core/constants/ui_constants.dart';
import '../../domain/entities/article.dart';
import '../pages/article_detail_page.dart';

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
          return _ArticleItemWidget(
            article: articles[index],
          );
        });
  }
}

class _ArticleItemWidget extends StatelessWidget {
  final Article article;
  const _ArticleItemWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (_) => ArticleDetailPage(
                  article: article,
                )));
      },
      child: Container(
        height: DEFAULT_ITEM_HEIGHT,
        padding: const EdgeInsets.all(DEFAULT_PADDING),
        child: Row(
          children: [
            const _ImageWidget(imageUrl: 'IMAGE_URL'),
            const SizedBox(
              width: DEFAULT_PADDING,
            ),
            Expanded(child: _ArticleInfoWidget(article: article))
          ],
        ),
      ),
    );
  }
}

class _ImageWidget extends StatelessWidget {
  final String imageUrl;
  const _ImageWidget({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120.0,
      height: 100.0,
      decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(DEFAULT_BORDER_RADIUS)),
    );
  }
}

class _ArticleInfoWidget extends StatelessWidget {
  final Article article;
  const _ArticleInfoWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
          children: [
            Container(
                padding: const EdgeInsets.all(DEFAULT_PADDING / 2),
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius:
                        BorderRadius.circular(DEFAULT_BORDER_RADIUS / 2)),
                child: Text(
                  article.source.name,
                  style: const TextStyle(color: Colors.white),
                )),
            const Text('12/12/12')
          ],
        )
      ],
    );
  }
}
