import 'package:flutter/material.dart';

class Styles {
  static const BoxDecoration mainContainer = BoxDecoration(
    color: Colors.white,
  );

  static BoxDecoration topToBottomImageShadow = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Colors.black.withOpacity(0.4), // Top shadow color
        Colors.transparent,
        Colors.transparent,
        Colors.black.withOpacity(0.4), // Bottom shadow color
      ],
    ),
  );

  static BoxShadow bottomShadow = BoxShadow(
    color: const Color(0x00000000).withOpacity(0.09),
    offset: const Offset(0, 7),
    blurRadius: 4,
    spreadRadius: -3,
  );
}
