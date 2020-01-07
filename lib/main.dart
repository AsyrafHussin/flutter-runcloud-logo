import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:runcloud_logo/widgets/text_title.dart';
import 'package:runcloud_logo/widgets/shape_cloud.dart';
import 'package:runcloud_logo/widgets/shape_line.dart';
import 'package:runcloud_logo/styles.dart';

void main() => runApp(RuncloudLogo());

class RuncloudLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Runcloud Logo',
      home: Scaffold(
        backgroundColor: Styles.PrimaryColor,
        body: Stack(
          children: <Widget>[
            ShapeCloud(
              top: 13,
              left: 0.5,
              width: 320.0,
              height: 100.0,
              radius: 50.0,
            ),
            ShapeCloud(
              top: 10,
              left: 3,
              width: 120.0,
              height: 120.0,
              radius: 60.0,
            ),
            ShapeCloud(
              top: 8.5,
              left: 8.5,
              width: 150.0,
              height: 150.0,
              radius: 75.0,
            ),
            ShapeLine(
              top: 10.2,
              left: 15.0,
              width: 100.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 10.2,
              left: 24.5,
              width: 55.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 11.06,
              left: 18.5,
              width: 55.0,
              color: Styles.PrimaryColor,
            ),
            ShapeLine(
              top: 11.9,
              left: 17.5,
              width: 100.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 11.9,
              left: 27,
              width: 20.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 11.9,
              left: 29.8,
              width: 40.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 12.78,
              left: 19.5,
              width: 120.0,
              color: Styles.PrimaryColor,
            ),
            ShapeLine(
              top: 13.65,
              left: 20,
              width: 145.0,
              color: Colors.white,
            ),
            ShapeLine(
              top: 14.54,
              left: 21.5,
              width: 120.0,
              color: Styles.PrimaryColor,
            ),
            ShapeLine(
              top: 15.43,
              left: 22,
              width: 90.0,
              color: Colors.white,
            ),
            TextTitle(
              title: 'Runcloud',
            ),
          ],
        ),
      ),
    );
  }
}
