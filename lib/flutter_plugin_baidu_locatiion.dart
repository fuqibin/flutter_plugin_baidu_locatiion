
import 'dart:async';

import 'package:flutter/services.dart';

class FlutterPluginBaiduLocatiion {
  static const MethodChannel _channel =
      const MethodChannel('flutter_plugin_baidu_locatiion');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
