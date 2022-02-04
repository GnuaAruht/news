import 'package:news/data/models/article_model.dart';

abstract class NewsLocalDataSource {
  Future<void> cacheArticles(String boxName, List<ArticleModel> articles);
  Future<void> clearCachedArticles(String boxName);
  List<ArticleModel> getCachedArticles(String boxName);
}
