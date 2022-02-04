import 'package:hive_flutter/hive_flutter.dart';
import 'package:news/core/constants/db_constants.dart';
import 'package:news/data/models/article_model.dart';
import 'package:news/data/models/source_model.dart';

Future<void> initDbConfig() async {
  await _initHive();
  await _openBoxes();
  await _registerAdapters();
}

Future<void> _initHive() async {
  await Hive.initFlutter();
}

Future<void> _openBoxes() async {
  await Hive.openBox<ArticleModel>(headlineArticlesBoxName);
}

Future<void> _registerAdapters() async {
  Hive.registerAdapter(SourceModelAdapter());
  Hive.registerAdapter(ArticleModelAdapter());
}
