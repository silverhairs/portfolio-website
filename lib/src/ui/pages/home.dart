import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:website/src/core/services/all.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/ui/widgets/home/body.dart';
import 'package:website/src/ui/widgets/home/profile_picture.dart';
import 'package:website/src/utils.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Home extends HookWidget {
  double _getContainerWidth(BuildContext context) {
    if (screenWidth(context) <= 600) return screenWidth(context) / 1.2;
    return screenWidth(context) / 1.5;
  }

  @override
  Widget build(BuildContext context) {
    final brightness = useProvider(ProviderService.brightnessProvider);
    final isDarkTheme = useState(false);
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        leadingWidth: 180,
        title: Padding(
          padding: EdgeInsets.only(left: _getContainerWidth(context) * 0.08),
          child: Text(
            "silverhairs",
            style: TextStyle(color: AppColors.green),
          ),
        ),
        actions: [
          Icon(EvaIcons.sun, size: 20),
          Switch(
            value: isDarkTheme.value,
            onChanged: (state) {
              isDarkTheme.value = state;
              Brightness brightnessState = brightness;
              if (isDarkTheme.value) {
                brightnessState = Brightness.dark;
              } else {
                brightnessState = Brightness.light;
              }
              context
                  .read(ProviderService.brightnessProvider.notifier)
                  .setBrightness(brightnessState);
              print(brightness);
            },
          ),
          Icon(
            EvaIcons.moon,
            size: 20,
            color: isDarkTheme.value ? AppColors.green : AppColors.lightGrey,
          ),
          SizedBox(width: _getContainerWidth(context) * 0.08)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Stack(
            children: [
              Container(
                height: screenHeight(context) - kToolbarHeight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      height: 200,
                      width: double.infinity,
                      color: AppColors.darkBlue,
                    ),
                    Expanded(
                      child: Container(color: AppColors.black),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
                child: Align(
                  alignment: Alignment.center,
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          margin: EdgeInsets.only(top: 64),
                          width: _getContainerWidth(context),
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
                          child: Body(),
                        ),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: ProfilePicture(),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
