import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/ui/widgets/global/social_icon_button.dart';

import 'articles_list.dart';
import 'projects_list.dart';

class BodyContent extends StatelessWidget {
  const BodyContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> popUpItems = [
      {'type': "cv", 'text': "My resume 📜"},
      {'type': "ping", 'text': "Ping Me 🔔"},
    ];
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: PopupMenuButton<String>(
                  child: Icon(EvaIcons.moreHorizotnal, color: AppColors.grey),
                  itemBuilder: (context) => popUpItems
                      .map(
                        (item) => PopupMenuItem<String>(
                          child: Text(item['text']!),
                          value: item['type'],
                        ),
                      )
                      .toList(),
                ),
              ),
              SizedBox(width: 16),
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
            "Software Developer building stuff mostly with Flutter & React.\n Watching animes in my free time.",
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
              VerticalDivider(indent: 32),
              SizedBox(width: 4),
              Expanded(
                flex: 2,
                child: ArticlesList(),
              ),
            ],
          ),
        )
      ],
    );
  }
}
