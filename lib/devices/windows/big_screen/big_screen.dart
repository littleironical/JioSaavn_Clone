import 'package:flutter/material.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/home_page.dart';
import 'package:jiosaavn_clone/devices/windows/big_screen/big_screen_widgets/left_drawer.dart';

class BigScreen extends StatelessWidget {
  const BigScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = Row(
      children: [
        LeftDrawer(),
        HomePage(),
      ],
    );

    return Scaffold(
      body: body,
    );
  }
}
