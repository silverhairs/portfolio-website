import 'package:flutter/widgets.dart';
import 'package:website/src/palette.dart';

class ProfilePicture extends StatelessWidget {
  final String? url;
  const ProfilePicture({
    this.url,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 165,
      width: 165,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/kaneki.png"),
          fit: BoxFit.cover,
        ),
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.darkBlue,
          width: 8,
        ),
      ),
    );
  }
}
