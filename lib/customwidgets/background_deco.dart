import 'package:flutter/material.dart';

class BackgroundDeco {
  static BoxDecoration getRadialGradient() {
    return BoxDecoration(
      gradient: RadialGradient(
            colors: [
              Colors.indigo[400]!,  //radial
              Color.fromARGB(255, 224, 224, 224)!,  //background
            ],
            center: Alignment.center,
            radius: 0.75,
      ),
    );
  }
}