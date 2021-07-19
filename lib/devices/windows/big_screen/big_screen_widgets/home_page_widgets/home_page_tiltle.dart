import 'package:flutter/material.dart';

homePageTitle(text, {bool showViewAll = false}) {
  return Container(
    height: 50,
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: TextStyle(
            fontSize: 15,
            color: Colors.grey[800],
          ),
        ),
        SizedBox(
          width: (showViewAll == true) ? 135 : 80,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              (showViewAll == true)
                  ? Text(
                      "View All",
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey[800],
                      ),
                    )
                  : SizedBox(),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_left_rounded,
                  size: 40,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.arrow_right_rounded,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
