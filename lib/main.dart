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
            cloudShape(
              top: 13,
              left: 0.5,
              width: 320.0,
              height: 100.0,
              radius: 50.0,
            ),
            cloudShape(
              top: 10,
              left: 3,
              width: 120.0,
              height: 120.0,
              radius: 60.0,
            ),
            cloudShape(
              top: 8.5,
              left: 8.5,
              width: 150.0,
              height: 150.0,
              radius: 75.0,
            ),
            lineShape(
              top: 10.2,
              left: 15.0,
              width: 100.0,
              color: Colors.white,
            ),
            lineShape(
              top: 10.2,
              left: 24.5,
              width: 55.0,
              color: Colors.white,
            ),
            lineShape(
              top: 11.06,
              left: 18.5,
              width: 55.0,
              color: RuncloudLogo.PrimaryColor,
            ),
            lineShape(
              top: 11.9,
              left: 17.5,
              width: 100.0,
              color: Colors.white,
            ),
            lineShape(
              top: 11.9,
              left: 27,
              width: 20.0,
              color: Colors.white,
            ),
            lineShape(
              top: 11.9,
              left: 29.8,
              width: 40.0,
              color: Colors.white,
            ),
            lineShape(
              top: 12.78,
              left: 19.5,
              width: 120.0,
              color: RuncloudLogo.PrimaryColor,
            ),
            lineShape(
              top: 13.65,
              left: 20,
              width: 145.0,
              color: Colors.white,
            ),
            lineShape(
              top: 14.54,
              left: 21.5,
              width: 120.0,
              color: RuncloudLogo.PrimaryColor,
            ),
            lineShape(
              top: 15.43,
              left: 22,
              width: 90.0,
              color: Colors.white,
            ),
            runcloudTitle(),
          ],
        ),
      ),
    );
  }

  Widget cloudShape(
      {double top, double left, double width, double height, double radius}) {
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

  Widget lineShape({double top, double left, double width, dynamic color}) {
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

  Widget runcloudTitle() {
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
