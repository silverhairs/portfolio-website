import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive/hive.dart';

class BrightnessNotifier extends StateNotifier<Brightness> {
  BrightnessNotifier() : super(_getBrightness());

  void setBrightness(Brightness brightness) {
    _saveBrightness(brightness);
    this.state = _getBrightness();
  }
}

var _displayBox = Hive.box("display");

Brightness _getBrightness() {
  switch (_displayBox.get("brightness", defaultValue: "dark")) {
    case 'dark':
      return Brightness.dark;
    default:
      return Brightness.light;
  }
}

void _saveBrightness(Brightness value) {
  switch (value) {
    case Brightness.dark:
      _displayBox.put("display", "dark");
      break;
    default:
      _displayBox.put("display", "light");
      break;
  }
}
