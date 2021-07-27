import 'package:flutter_submission/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/constants.dart';

class MyGenreButtons extends StatefulWidget {
  const MyGenreButtons({
    Key key,
  }) : super(key: key);

  @override
  _MyGenreButtonsState createState() => _MyGenreButtonsState();
}

class _MyGenreButtonsState extends State<MyGenreButtons> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 50,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: genre.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: Text(
                genre[index],
                style: TextStyle(
                    color:
                        index == selectedIndex ? kYellowColor : kColorPrimary),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                backgroundColor: index == selectedIndex
                    ? MaterialStateProperty.all(kBlueColor)
                    : MaterialStateProperty.all(kLightGreyColor),
                // MaterialStateProperty.all(kBlueColor),
              ),
            ),
          );
        },
      ),
    );
  }
}
