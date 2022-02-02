import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../core/constants/constants.dart';
import '../../domain/entities/article.dart';

class ArticleItemWidget extends StatelessWidget {
  final Article article;
  const ArticleItemWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: DEFAULT_ITEM_HEIGHT,
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            _ImageWidget(imageUrl: article.urlToImage ?? ''),
            const SizedBox(
              width: 8.0,
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: FadeInImage.memoryNetwork(
        width: 120.0,
        height: 100,
        imageErrorBuilder: (context, error, stackTrace) {
          return Container(
            width: 120.0,
            height: 100.0,
            color: Colors.red,
          );
        },
        placeholder: kTransparentImage,
        image: imageUrl,
        fit: BoxFit.cover,
      ),
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
                padding: const EdgeInsets.all(4.0),
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(4.0)),
                child: Text(
                  article.source.name,
                  style: const TextStyle(color: Colors.white),
                )),
            Text(article.formattedDate)
          ],
        )
      ],
    );
  }
}
