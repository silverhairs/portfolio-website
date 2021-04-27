import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:website/src/core/models/models.dart' show Project, Article;
import 'package:website/src/core/notifiers/all.dart';
import 'package:website/src/core/notifiers/articles.dart';
import 'package:website/src/core/notifiers/projects.dart';

class ProviderService {
  /// Manipulates the app brightness state
  static final brightnessProvider =
      StateNotifierProvider<BrightnessNotifier, Brightness>(
    (ref) => BrightnessNotifier(),
  );

  /// Manipulates the projects list state
  static final projectsListProvider =
      StateNotifierProvider<ProjectsListNotifier, List<Project>?>(
    (ref) => ProjectsListNotifier(),
  );

  /// Manipulates the articles list state
  static final articlesListProvider =
      StateNotifierProvider<ArticlesListNotifier, List<Article>?>(
    (ref) => ArticlesListNotifier(),
  );
}
