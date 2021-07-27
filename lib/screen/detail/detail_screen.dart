import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/model/movie.dart';
import 'package:flutter_submission/screen/detail/components/header_detail.dart';
import 'package:flutter_submission/screen/detail/components/overview_detail.dart';
import 'package:flutter_submission/screen/detail/components/title_detail.dart';

class DetailScreen extends StatelessWidget {
  final Movie movie;

  const DetailScreen({Key key, this.movie}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              colors: [
                Color(0xFFFDFDFE),
                Color(0xFFF3F4F8),
              ],
            ),
          ),
          child: Column(
            children: [
              HeaderDetail(movie: movie),
              TitleDetail(movie: movie),
              OverviewDetail()
            ],
          ),
        ),
      ),
    );
  }
}
