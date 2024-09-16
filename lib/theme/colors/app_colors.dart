

import 'package:flutter/cupertino.dart';

class AppColors {
  static const Color DEFAULT_COLOR = Color(0xff272727);
  static Widget mixedTextColor(Widget widget) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 0.51, 0.91, 1.0],
          colors: [
            Color(0xFF3BF686),
            Color(0xFF4CA9FF),
            Color(0xFF3BF686),
            Color(0xFF4CA9FF),
          ],
        ).createShader(bounds);
      },
      child: widget,
    );
  }

}