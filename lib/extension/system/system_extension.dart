import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SystemExtension {
  ///
  ///  设置透明状态栏
  ///
  static void configSystemOverlayTransparent() {
    SystemUiOverlayStyle systemUiOverlayStyle = const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    );
    SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
  }

  ///
  ///  设置竖屏幕
  ///
  static Future<void> configPreferredOrientations() {
    const device = DeviceOrientation.portraitUp;
    return SystemChrome.setPreferredOrientations([device]);
  }
}
