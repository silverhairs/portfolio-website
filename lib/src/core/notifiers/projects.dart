import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';
import 'package:website/src/core/models/models.dart' show Project;

class ProjectsListNotifier extends StateNotifier<List<Project>?> {
  ProjectsListNotifier() : super(_getSavedProjects());

  void addProject(Project project) {
    _saveProject(project);
    this.state = _getSavedProjects();
  }

  void addList(List<Project> list) {
    list.forEach((prj) {
      _saveProject(prj);
    });
    this.state = _getSavedProjects();
  }
}

var _projectsBox = Hive.box<Project>("projects");

List<Project>? _getSavedProjects() => _projectsBox.values.toList();

void _saveProject(Project project) => _projectsBox.add(project);
