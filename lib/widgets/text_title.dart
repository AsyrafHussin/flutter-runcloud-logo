import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';
import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;
  final ScreenScaler scaler = ScreenScaler();

  TextTitle({@required this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: scaler.getHeight(20),
      left: scaler.getWidth(1.7),
      child: Transform(
        transform: Matrix4.skewX(-0.1),
        child: Text(
          title.toUpperCase(),
          style: TextStyle(
            fontSize: 65.0,
            fontFamily: 'Nunito',
            color: Colors.white,
            fontWeight: FontWeight.w800,
          ),
        ),
      ),
    );
  }
}
