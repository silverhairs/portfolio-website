import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/ui/widgets/global/social_icon_button.dart';

import 'blog_posts_list.dart';
import 'projects_list.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 104,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                child: Text("Contact Me"),
                onPressed: () => print(
                  "//TODO: Open Gmail",
                ),
              ),
            ],
          ),
        ),
        Text(
          "Boris Kayiranga",
          style: Theme.of(context)
              .textTheme
              .headline4!
              .copyWith(color: AppColors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: Text(
            "Mobile Engineer passionate about Dart, Flutter, React and Open Source. Exploring a bunch of flutter-related stuff.",
            textAlign: TextAlign.center,
            style: Theme.of(context)
                .textTheme
                .headline6!
                .copyWith(color: AppColors.lightGrey),
          ),
        ),
        SizedBox(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    EvaIcons.pin,
                    color: AppColors.grey,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "Kigali, Rwanda",
                    style: TextStyle(color: AppColors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(
                    EvaIcons.email,
                    color: AppColors.grey,
                  ),
                  SizedBox(width: 8),
                  Text(
                    "boriskayienzo@gmail.com",
                    style: TextStyle(color: AppColors.grey),
                  ),
                ],
              ),
              Row(
                children: [
                  SocialIconButton(
                    iconData: EvaIcons.twitter,
                    url: "https://twitter.com/isilverhairs",
                    iconColor: Colors.blueAccent,
                  ),
                  SocialIconButton(
                    iconData: EvaIcons.github,
                    url: "https://github.com/silverhairs",
                    iconColor: AppColors.lightGrey,
                  ),
                  SocialIconButton(
                    iconData: EvaIcons.linkedin,
                    url: "https://linkedin.com/in/iamboriskayi",
                    iconColor: AppColors.lightGrey,
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(),
        SizedBox(height: 16),
        Text(
          "Work",
          style: TextStyle(color: AppColors.grey),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Student ",
              style: TextStyle(color: AppColors.green),
            ),
            Text("at "),
            Text(
              "University Of Kigali",
              style: TextStyle(color: AppColors.green),
            )
          ],
        ),
        SizedBox(height: 16),
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 1,
                child: ProjectsList(),
              ),
              VerticalDivider(),
              SizedBox(width: 4),
              Expanded(
                flex: 2,
                child: BlogPostsList(),
              )
            ],
          ),
        )
      ],
    );
  }
}