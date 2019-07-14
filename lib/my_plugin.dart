import 'dart:async';

import 'package:flutter/services.dart';

class MyPlugin {
  static const MethodChannel _channel =
      const MethodChannel('my_plugin');

  static void showToast(String message) {
    _channel.invokeMethod('showToast', {
      'message': message
    });
  }
}
