import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:website/src/core/models/models.dart';

import 'app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserProfileAdapter());
  Hive.registerAdapter(ArticleAdapter());
  Hive.registerAdapter(ProjectAdapter());
  await Hive.openBox('display');
  await Hive.openBox<UserProfile>('profile');
  await Hive.openBox<Article>('articles');
  await Hive.openBox<Project>("projects");
  return runApp(ProviderScope(child: App()));
}
