import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

double defaultMargin = 24.0;
double defaultRadius = 20.0;

Color kWhiteColor = Color(0xffFFFFFF);
Color kGreyColor = Color(0xffBABFC9);
Color kLightGreyColor = Color(0xff696D74);
Color kBlueColor = Color(0xff546EE5);
Color kColorPrimary = Color(0xff1B1E25);
Color kColorSecondary = Color(0xff252932);
Color kYellowColor = Color(0xffFFA235);

Container boxStar() {
  return Container(
    margin: EdgeInsets.only(right: 5),
    height: 18,
    width: 18,
    child: Icon(
      Icons.star,
      color: Colors.yellow,
    ),
  );
}

TextStyle whiteTextStyle = GoogleFonts.poppins(
  color: kWhiteColor,
);

TextStyle greyTextStyle = GoogleFonts.poppins(
  color: kGreyColor,
);

TextStyle blueTextSyle = GoogleFonts.poppins(
  color: kBlueColor,
);

TextStyle lightGreyTextStyle = GoogleFonts.poppins(
  color: kLightGreyColor,
);

FontWeight light = FontWeight.w300;
FontWeight regular = FontWeight.w400;
FontWeight medium = FontWeight.w500;
