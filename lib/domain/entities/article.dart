import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

import 'source.dart';

class Article extends Equatable {
  final Source source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
  final String? content;

  const Article(
      {required this.source,
      this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  @override
  List<Object?> get props => [
        source,
        author,
        title,
        description,
        url,
        urlToImage,
        publishedAt,
        content
      ];
}

extension ArticleX on Article {
  String get formattedDate {
    var dateTimePublishedAt =
        DateFormat('yyyy-MM-ddTHH:mm:ssZ').parse(publishedAt, true);
    return DateFormat('dd MMM yyyy').format(dateTimePublishedAt);
  }
}
