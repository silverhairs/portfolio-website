import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 24.0),
      child: Text(
        "©${DateTime.now().year} Boris Kayi.",
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
