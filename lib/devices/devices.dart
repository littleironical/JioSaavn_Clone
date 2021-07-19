import 'package:flutter/material.dart';
import 'dart:io' show Platform;
import 'package:jiosaavn_clone/devices/mobile/mobile.dart';
import 'package:jiosaavn_clone/devices/web/web.dart';
import 'package:jiosaavn_clone/devices/windows/windows.dart';

class Devices extends StatelessWidget {
  const Devices({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid || Platform.isIOS)
      return Mobile();
    else if (Platform.isWindows)
      return Windows();
    else
      return Web();
  }
}
