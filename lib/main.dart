import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screen_scaler/flutter_screen_scaler.dart';

void main() => runApp(RuncloudLogo());

class RuncloudLogo extends StatelessWidget {
  static const PrimaryColor = Color(0xFF21313e);
  static const TransparentColor = Color(0xFF0E3311);
  static ScreenScaler scaler = ScreenScaler();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Runcloud Logo',
      home: Scaffold(
        backgroundColor: RuncloudLogo.PrimaryColor,
        body: Stack(
          children: <Widget>[
            cloud(13, 0.5, 320.0, 100.0, 50.0),
            cloud(10, 3, 120.0, 120.0, 60.0),
            cloud(8.5, 8.5, 150.0, 150.0, 75.0),
            line(10.2, 15, 100.0, Colors.white),
            line(10.2, 24.5, 55.0, Colors.white),
            line(11.06, 18.5, 55.0, RuncloudLogo.PrimaryColor),
            line(11.9, 17.5, 100.0, Colors.white),
            line(11.9, 27, 20.0, Colors.white),
            line(11.9, 29.8, 40.0, Colors.white),
            line(12.78, 19.5, 120.0, RuncloudLogo.PrimaryColor),
            line(13.65, 20, 145.0, Colors.white),
            line(14.54, 21.5, 120.0, RuncloudLogo.PrimaryColor),
            line(15.43, 22, 90.0, Colors.white),
            title(),
          ],
        ),
      ),
    );
  }

  Widget cloud(
      double top, double left, double width, double height, double radius) {
    return Positioned(
      top: RuncloudLogo.scaler.getHeight(top),
      left: RuncloudLogo.scaler.getWidth(left),
      child: Transform.scale(
        scale: 0.9,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
          width: width,
          height: height,
          color: RuncloudLogo.TransparentColor.withOpacity(0),
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

  Widget line(double top, double left, double width, dynamic color) {
    return Positioned(
      top: RuncloudLogo.scaler.getHeight(top),
      left: RuncloudLogo.scaler.getWidth(left),
      child: Transform.scale(
        scale: 0.9,
        child: Container(
          margin: EdgeInsets.fromLTRB(0, 0, 0, 20.0),
          width: width,
          height: 20.0,
          color: TransparentColor.withOpacity(0),
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

  Widget title() {
    return Positioned(
      top: RuncloudLogo.scaler.getHeight(20),
      left: RuncloudLogo.scaler.getWidth(1.7),
      child: Transform(
        transform: Matrix4.skewX(-0.1),
        child: Text(
          'Runcloud'.toUpperCase(),
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
