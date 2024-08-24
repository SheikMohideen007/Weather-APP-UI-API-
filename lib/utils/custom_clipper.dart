import 'dart:ui';

import 'package:flutter/material.dart';

class TopCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double curveHeight = 10.0; // Height of the curve
    double curveDepth = 10.0; // Depth of the curve

    var path = Path();
    path.lineTo(0, curveHeight);

    // Start the curve
    path.quadraticBezierTo(
      size.width / 2, // Control point at the center
      curveHeight - curveDepth, // Depth of the curve
      size.width, // End of the curve
      curveHeight,
    );

    path.lineTo(size.width, 0); // Line to top right
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
