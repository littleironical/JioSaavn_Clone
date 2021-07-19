import 'package:flutter/material.dart';

class LeftDrawerTile extends StatefulWidget {
  const LeftDrawerTile({Key? key, this.icon, this.text}) : super(key: key);
  final icon;
  final text;

  @override
  State<LeftDrawerTile> createState() => _LeftDrawerTileState();
}

class _LeftDrawerTileState extends State<LeftDrawerTile> {
  bool insideTheRegion = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: MouseRegion(
        onEnter: (event) {
          setState(() {
            insideTheRegion = true;
          });
        },
        onExit: (event) {
          setState(() {
            insideTheRegion = false;
          });
        },
        // cursor: SystemMouseCursors.click,
        opaque: true,
        child: Container(
          color: (insideTheRegion == true) ? Colors.grey[300] : Colors.grey[200],
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  widget.icon,
                  color: Colors.grey[600],
                ),
                SizedBox(width: 15),
                Text(
                  widget.text,
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
