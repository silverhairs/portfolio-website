import 'package:flutter/material.dart';

import 'body_content.dart';

class Body extends StatelessWidget {
  final double width;
  const Body({
    required this.width,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      margin: EdgeInsets.only(top: 64),
      constraints: BoxConstraints(
        maxWidth: 975,
      ),
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 16,
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Theme.of(context).primaryColor),
      child: Column(
        children: [
          BodyContent(),
        ],
      ),
    );
  }
}
