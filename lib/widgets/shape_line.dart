import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:flutter/material.dart';
import 'package:runcloud_logo/styles.dart';

class ShapeLine extends StatelessWidget {
  final double top;
  final double left;
  final double width;
  final dynamic color;
  final ScreenScaler scaler = ScreenScaler();

  ShapeLine({
    @required this.top,
    @required this.left,
    @required this.width,
    @required this.color,
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
          height: 20.0,
          color: Styles.TransparentColor.withOpacity(0),
          child: Container(
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.all(
                Radius.circular(50.0),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
