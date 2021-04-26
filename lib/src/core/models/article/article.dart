import 'package:hive/hive.dart';
part 'article.g.dart';

@HiveType(typeId: 0)
class Article {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final List<String?> tags;
  @HiveField(2)
  final DateTime? publishDate;
  @HiveField(3)
  final int reactions;
  @HiveField(4)
  final String readTime;
  @HiveField(5)
  final bool isRead;

  const Article({
    required this.title,
    this.tags: const [],
    required this.reactions,
    this.publishDate,
    required this.readTime,
    this.isRead: false,
  });
}
