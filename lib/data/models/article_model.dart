import 'package:flutter/services.dart';
import 'package:json_annotation/json_annotation.dart';

import './source_model.dart';

part 'article_model.g.dart';

@JsonSerializable()
class ArticleModel {
  final SourceModel source;
  final String? author;
  final String title;
  final String? description;
  final String url;
  final String? urlToImage;
  final String publishedAt;
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
