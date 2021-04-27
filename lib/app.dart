import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:website/src/core/services/all.dart';
import 'package:website/src/palette.dart';
import 'package:website/src/ui/pages/home.dart';

class App extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final brightness = useProvider(ProviderService.brightnessProvider);
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.nightBlue,
        brightness: brightness,
        primarySwatch: MaterialColor(0xff0a0a0a, darkSwatch),
        accentColor: AppColors.green,
        fontFamily: 'Muli',
        textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (states) => AppColors.green),
            padding: MaterialStateProperty.resolveWith<EdgeInsetsGeometry>(
              (states) => EdgeInsets.all(20),
            ),
            textStyle: MaterialStateProperty.resolveWith<TextStyle>(
              (states) => Theme.of(context).textTheme.bodyText2!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                  color: AppColors.white),
            ),
            shape: MaterialStateProperty.resolveWith(
              (states) => RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
            ),
          ),
        ),
        textSelectionTheme: Theme.of(context).textSelectionTheme.copyWith(
              selectionColor: AppColors.green,
              selectionHandleColor: AppColors.darkBlue,
            ),
        popupMenuTheme: Theme.of(context).popupMenuTheme.copyWith(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
      ),
      home: Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}
