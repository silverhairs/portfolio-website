import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:website/src/core/models/models.dart';

class ArticlesListNotifier extends StateNotifier<List<Article>?> {
  ArticlesListNotifier() : super(_getSavedArticles());

  void addArticle(Article article) {
    _saveArticle(article);
    this.state = _getSavedArticles();
  }

  void addList(List<Article> list) {
    list.forEach((a) {
      _saveArticle(a);
    });
    this.state = _getSavedArticles();
  }
}

var _articlesBox = Hive.box<Article>('articles');

List<Article>? _getSavedArticles() => _articlesBox.values.toList();

void _saveArticle(Article article) => _articlesBox.add(article);
