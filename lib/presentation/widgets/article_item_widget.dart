import 'package:flutter/material.dart';
import 'package:news/presentation/pages/article_detail_page.dart';
import 'package:transparent_image/transparent_image.dart';

import '../../core/constants/constants.dart';
import '../../domain/entities/article.dart';

class ArticleItemWidget extends StatelessWidget {
  final Article article;
  const ArticleItemWidget({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, ArticleDetailPage.routeName,
            arguments: article);
      },
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
            color: Colors.red.withOpacity(0.6),
            child: const Icon(Icons.error_outline_outlined),
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
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Text(
              article.title.trim(),
              maxLines: 3,
              style: const TextStyle(
                  fontSize: 18.0,
                  overflow: TextOverflow.ellipsis,
                  fontWeight: FontWeight.w400),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                article.source.name,
                style: const TextStyle(fontSize: 16.0, color: Colors.blue),
              ),
              Text(
                article.formattedDate,
                style: const TextStyle(fontSize: 12.0),
              )
            ],
          ),
        ],
      ),
    );
  }
}
