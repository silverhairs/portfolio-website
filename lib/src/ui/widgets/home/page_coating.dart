import 'package:flutter/widgets.dart';
import 'package:website/src/ui/widgets/global/footer.dart';

import 'profile_picture.dart';
import 'body.dart';

class PageCoating extends StatelessWidget {
  final double bodyWidth;
  const PageCoating({
    required this.bodyWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 60),
      child: Column(
        children: [
          Container(
            child: Align(
              alignment: Alignment.center,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Body(width: this.bodyWidth),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: ProfilePicture(),
                  )
                ],
              ),
            ),
          ),
          Footer()
        ],
      ),
    );
  }
}
