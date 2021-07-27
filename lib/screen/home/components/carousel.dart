import 'package:flutter/material.dart';

class Carousel extends StatelessWidget {
  final String imgList;

  const Carousel({Key key, this.imgList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: MediaQuery.of(context).size.width * 0.8,
        height: MediaQuery.of(context).size.height * 0.6,
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          child: Image.asset(imgList, fit: BoxFit.cover, width: 1000.0),
        ),
      ),
    );
  }
}
