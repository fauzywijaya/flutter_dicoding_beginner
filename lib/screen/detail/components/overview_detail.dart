import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/constants.dart';
import 'package:flutter_submission/theme.dart';

class OverviewDetail extends StatelessWidget {
  const OverviewDetail({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          AutoSizeText(
            "Overview",
            style: blueTextSyle.copyWith(fontSize: 20, fontWeight: medium),
            minFontSize: 16,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 10),
          AutoSizeText(
            loremIpsum,
            style: lightGreyTextStyle.copyWith(fontSize: 14, fontWeight: light),
            minFontSize: 12,
          ),
        ],
      ),
    );
  }
}
