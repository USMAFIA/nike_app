import 'package:flutter/material.dart';

class AppColors {
  static const Color no = Color(0x00000000);
  static const Color tbl = Color(0xFF6200EE);
  static const Color bl = Color(0xFF007AFF);
  static const Color pl = Color(0xFF3700B3);
  static Color gr6 = Colors.grey[600]!;
  static Color gr8 = Colors.grey[800]!;

  static const Color r = Color(0xFFB00020);
  static const Color bk = Color(0xFF000000);
  static const Color w = Color(0xFFFFFFFF);

  // Additional colors
  static const Color aq = Color(0xFF03DAC5);
  static const Color idebg = Color(0xFF212121);
  static const Color lightTextColor = Color(0xFF757575);
  static const Color dividerColor = Color(0xFFE0E0E0);
  static const Color greyColor = Color(0xFFBDBDBD);
  static const Color blackWithOpacity = Color(0x5A000000); // 35% opacity
  static const Color lightGray = Color(0xFFF9F9F9);

  // Function to blend colors
  static Color getMixedColor() {
    // Defining the colors and their percentages
    final colors = [
      bk.withOpacity(1.0), // Black 100%
      bl.withOpacity(1.0), // Blue 100%
      blackWithOpacity, // Black 35%
      lightGray.withOpacity(0.94), // Light gray 94%
      w.withOpacity(1.0) // White 100%
    ];

    // Calculate average RGBA values
    int r = 0, g = 0, b = 0, a = 0;
    for (var color in colors) {
      r += color.red;
      g += color.green;
      b += color.blue;
      a += (color.opacity * 255).toInt();
    }

    final n = colors.length;
    return Color.fromARGB(a ~/ n, r ~/ n, g ~/ n, b ~/ n);
  }
}
