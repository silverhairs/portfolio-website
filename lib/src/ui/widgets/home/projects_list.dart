import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:website/src/constants.dart';
import 'package:website/src/core/models/models.dart';
import 'package:http/http.dart' as http;

import 'empty_list_message.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({
    Key? key,
  }) : super(key: key);

  Future<List<Project>?> _getPinnedRepos() async {
    http.Response res = await http.get(Uri.parse(pinnedRepos));
    if (res.statusCode == 200) {
      List data = jsonDecode(res.body);
      return data.map((repo) => Project.fromMap(repo)).toList();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Projects",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: FutureBuilder<List<Project>?>(
              future: _getPinnedRepos(),
              builder: (context, snapshot) {
                if (snapshot.hasData)
                  return Container(
                    height: 100.0 * snapshot.data!.length,
                    child: ListView.separated(
                      separatorBuilder: (context, index) =>
                          Divider(indent: 15, endIndent: 15),
                      itemCount: snapshot.data!.length,
                      itemBuilder: (controller, index) {
                        var project = snapshot.data![index];
                        return ListTile(
                          isThreeLine: true,
                          title: Text(project.title),
                          subtitle: Text(project.description),
                        );
                      },
                    ),
                  );
                else if (snapshot.connectionState == ConnectionState.waiting)
                  return EmptyListMessageBox(isLoading: true);
                return EmptyListMessageBox(isLoading: false);
              },
            ),
          ),
          Container()
        ],
      ),
    );
  }
}
