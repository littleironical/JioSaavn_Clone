import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/custom/custom_colors.dart';
import 'package:jiosaavn_clone/devices/devices.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jio Saavn',
      theme: ThemeData(
        fontFamily: 'Lato',
        textTheme: TextTheme(
          bodyText1: TextStyle(color: customBlack),
          bodyText2: TextStyle(color: customGrey),
        ),
      ),
      home: Devices(),
    );
  }
}
