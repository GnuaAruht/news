import 'package:json_annotation/json_annotation.dart';
import 'package:news/data/models/article_model.dart';

part 'article_result_model.g.dart';

@JsonSerializable()
class ArticleResultModel {
  final String status;
  final int totalResults;
  final List<ArticleModel> articles;

  ArticleResultModel(this.status, this.totalResults, this.articles);

  factory ArticleResultModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleResultModelFromJson(json);

  Map<String, dynamic> toJson() => _$ArticleResultModelToJson(this);
}
