import 'package:hive/hive.dart';
part 'project.g.dart';

@HiveType(typeId: 2)
class Project {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final String description;
  @HiveField(3)
  final String url;
  @HiveField(4)
  final List<String?> screenshotURLs;
  @HiveField(5)
  final List<String?> technologies;

  const Project({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.technologies,
    this.screenshotURLs: const [],
  });
}
