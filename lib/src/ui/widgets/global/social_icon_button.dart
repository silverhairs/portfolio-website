// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';

class SocialIconButton extends StatelessWidget {
  final String url;
  final IconData iconData;
  final Color iconColor;
  const SocialIconButton({
    required this.iconData,
    required this.url,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        this.iconData,
        color: this.iconColor,
      ),
      onPressed: () => html.window.location.href = this.url,
    );
  }
}
