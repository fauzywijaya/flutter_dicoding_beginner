import 'package:flutter/material.dart';
import 'package:flutter_submission/theme.dart';

class MyTopBar extends StatelessWidget {
  const MyTopBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.menu,
            color: Colors.black54,
          ),
          Text(
            "Movies App",
            style: blueTextSyle.copyWith(
                fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Icon(
            Icons.search,
            color: kYellowColor,
          )
        ],
      ),
    );
  }
}
