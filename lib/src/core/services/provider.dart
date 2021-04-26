import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:website/src/core/notifiers/all.dart';

class ProviderService {
  /// Manipulates the app brightness state
  static final brightnessProvider =
      StateNotifierProvider<BrightnessNotifier, Brightness>(
    (ref) => BrightnessNotifier(),
  );
}
