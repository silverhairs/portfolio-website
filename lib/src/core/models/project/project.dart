import 'package:hive/hive.dart';
part 'project.g.dart';

@HiveType(typeId: 2)
class Project {
  @HiveField(0)
  final int stars;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String url;
  @HiveField(4)
  final String? language;

  const Project({
    this.stars: 0,
    required this.title,
    required this.description,
    required this.url,
    required this.language,
  });

  static Project fromMap(Map data) => Project(
        stars:
            data['stars'] is String ? int.parse(data['stars']) : data['stars'],
        title: data['repo'],
        description: data['description'],
        url: "https://github.com/silverhairs/${data['repo']}",
        language: data['language'],
      );
}
