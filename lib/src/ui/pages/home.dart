import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:website/src/core/services/all.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/ui/widgets/home/all.dart'
    show PageCoating, PageFoundation;
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
            value: brightness == Brightness.dark,
            onChanged: (state) {
              if (state) {
                context
                    .read(ProviderService.brightnessProvider.notifier)
                    .setBrightness(Brightness.dark);
              } else {
                context
                    .read(ProviderService.brightnessProvider.notifier)
                    .setBrightness(Brightness.light);
              }
            },
          ),
          Icon(
            EvaIcons.moon,
            size: 20,
            color: brightness == Brightness.dark
                ? AppColors.green
                : AppColors.lightGrey,
          ),
          SizedBox(width: _getContainerWidth(context) * 0.08)
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ClampingScrollPhysics(),
          child: Stack(
            children: [
              PageFoundation(),
              PageCoating(bodyWidth: _getContainerWidth(context)),
            ],
          ),
        ),
      ),
    );
  }
}
