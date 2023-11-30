import 'package:flutter/material.dart';

class BackgroundDeco {
  static BoxDecoration getRadialGradient() {
    return BoxDecoration(
      gradient: RadialGradient(
            colors: [
              Colors.indigo[400]!,
              Color.fromARGB(255, 224, 224, 224)!,
            ],
            center: Alignment.center,
            radius: 0.75,
      ),
    );
  }
}