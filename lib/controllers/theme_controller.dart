import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ThemeController extends GetxController {

  final Rx<Color> _textColor = Colors.black.obs; // 文本颜色
  final Rx<Color> _backgroundColor = Colors.white.obs; // 背景颜色
  final Rx<Color> _iconColor = const Color(0xFFC0BBB3).obs; // 图标颜色
  final Rx<Color> _borderColor = const Color(0xFFE4E1DB).obs;//边框颜色


  Color get textColor => _textColor.value;
  Color get backgroundColor => _backgroundColor.value;
  Color get iconColor => _iconColor.value;
  Color get borderColor => _borderColor.value;

  // 黑夜模式
  void toggleTheme() {
    debugPrint('黑夜模式');
      _textColor.value = const Color(0xFFF8F8F8);
      _backgroundColor.value = const Color(0xFF141416);
      _iconColor.value = const Color(0xFFF8F8F8);
      _borderColor.value = const Color(0xFFF8F8F8);
  }

  // 白天模式
  void toggleTheme2() {
    debugPrint('白天模式');
      _textColor.value = const Color(0xFF141416);
      _backgroundColor.value = const Color(0xFFF5F5F5);
      _iconColor.value = const Color(0xFFC0BBB3);
      _borderColor.value = const Color(0xFFE4E1DB);
  }

}
