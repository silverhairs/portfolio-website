import 'package:flutter/material.dart';

class ProjectsList extends StatelessWidget {
  const ProjectsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Projects",
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
