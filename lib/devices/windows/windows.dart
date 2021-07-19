import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen.dart';

class Windows extends StatelessWidget {
  const Windows({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    print(screenWidth);

    return BigScreen();
  }
}
