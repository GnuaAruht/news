// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_result_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleResultModel _$ArticleResultModelFromJson(Map<String, dynamic> json) =>
    ArticleResultModel(
      json['status'] as String,
      json['totalResults'] as int,
      (json['articles'] as List<dynamic>)
          .map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ArticleResultModelToJson(ArticleResultModel instance) =>
    <String, dynamic>{
      'status': instance.status,
      'totalResults': instance.totalResults,
      'articles': instance.articles,
    };
