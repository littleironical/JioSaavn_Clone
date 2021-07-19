import 'package:flutter/material.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = Container(
      child: Center(
        child: Text("MOBILE VIEW"),
      ),
    );

    return Scaffold(
      body: body,
    );
  }
}
