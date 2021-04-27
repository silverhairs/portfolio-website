import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/src/palette.dart';

class BlogPostsList extends StatelessWidget {
  const BlogPostsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Blog Posts",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Icon(
                    EvaIcons.alertTriangle,
                    color: Colors.orangeAccent,
                    size: 50,
                  ),
                  Text(
                    "Nothing's here",
                    style: TextStyle(color: AppColors.grey),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
