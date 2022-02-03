import 'package:hive_flutter/adapters.dart';
import 'package:json_annotation/json_annotation.dart';

import '../../domain/entities/article.dart';
import 'source_model.dart';

part 'article_model.g.dart';

@JsonSerializable()
@HiveType(typeId: 2)
class ArticleModel {
  @HiveField(0)
  final SourceModel source;
  @HiveField(1)
  final String? author;
  @HiveField(2)
  final String title;
  @HiveField(3)
  final String? description;
  @HiveField(4)
  final String url;
  @HiveField(5)
  final String? urlToImage;
  @HiveField(6)
  final String publishedAt;
  @HiveField(7)
  final String? content;

  ArticleModel(
      {required this.source,
      this.author,
      required this.title,
      required this.description,
      required this.url,
      required this.urlToImage,
      required this.publishedAt,
      required this.content});

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleModelToJson(this);
}

extension ArticleModelX on ArticleModel {
  Article toEntity() {
    return Article(
        source: source.toEntity(),
        title: title,
        description: description,
        url: url,
        urlToImage: urlToImage,
        publishedAt: publishedAt,
        content: content);
  }
}
