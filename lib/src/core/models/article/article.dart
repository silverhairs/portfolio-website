import 'package:hive/hive.dart';
part 'article.g.dart';

@HiveType(typeId: 0)
class Article {
  @HiveField(0)
  final String? title;
  @HiveField(1)
  final String? description;
  @HiveField(2)
  final String? pubDate;
  @HiveField(3)
  final String url;
  @HiveField(4)
  final int commentsCount;
  @HiveField(5)
  final int reactionsCount;
  @HiveField(6)
  final int readingTimeMinutes;
  @HiveField(7)
  final List<dynamic>? tags;

  const Article({
    required this.title,
    required this.description,
    required this.pubDate,
    required this.url,
    this.commentsCount: 0,
    this.reactionsCount: 0,
    this.readingTimeMinutes: 0,
    this.tags: const <String>[],
  });

  static Article fromMap(Map data) => Article(
        title: data['title'],
        description: data['description'],
        pubDate: data["readable_publish_date"],
        url: data['url'],
        commentsCount: data['comments_count'],
        reactionsCount: data['public_reactions_count'],
        readingTimeMinutes: data['reading_time_minutes'],
        tags: data['tag_list'],
      );
}
