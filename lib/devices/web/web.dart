import 'package:flutter/material.dart';

class Web extends StatelessWidget {
  const Web({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final body = Container(
      child: Center(
        child: Text("WEB VIEW"),
      ),
    );
    
    return Scaffold(
      body: body,
    );
  }
}
