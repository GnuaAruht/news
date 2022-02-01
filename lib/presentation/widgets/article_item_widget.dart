import 'package:flutter/material.dart';
import 'package:news/core/constants/constants.dart';
import 'package:news/domain/entities/article.dart';

class ArticleItemWidget extends StatelessWidget {
  final Article article;
  const ArticleItemWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
