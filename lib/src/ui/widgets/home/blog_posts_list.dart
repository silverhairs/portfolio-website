import 'package:flutter/material.dart';

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
          Text(
            "Blog Posts",
            style: Theme.of(context).textTheme.headline5,
          ),
        ],
      ),
    );
  }
}
