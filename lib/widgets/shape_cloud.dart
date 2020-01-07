import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:flutter/material.dart';
import 'package:runcloud_logo/styles.dart';

class ShapeCloud extends StatelessWidget {
  final double top;
  final double left;
  final double width;
  final double height;
  final double radius;
  final ScreenScaler scaler = ScreenScaler();

  ShapeCloud({
    @required this.top,
    @required this.left,
    @required this.width,
    @required this.height,
    @required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: scaler.getHeight(top),
      left: scaler.getWidth(left),
      child: Transform.scale(
        scale: 0.9,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
          width: width,
          height: height,
          color: Styles.TransparentColor.withOpacity(0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(
                Radius.circular(radius),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
