import 'package:flutter/material.dart';

class BackgroundDeco {
  static BoxDecoration getRadialGradient() {
    return BoxDecoration(
      gradient: RadialGradient(
            colors: [
              Colors.black,  //radial
              const Color(0xFF160A1D),  //background
            ],
            center: Alignment.center,
            radius: 0.75,
      ),
    );
  }
}