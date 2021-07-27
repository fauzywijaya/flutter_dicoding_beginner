import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_submission/screen/detail/detail_screen.dart';
import 'package:flutter_submission/screen/home/components/carousel.dart';
import 'package:flutter_submission/screen/home/components/genre_button.dart';
import 'package:flutter_submission/screen/home/components/top_bar.dart';
import 'package:flutter_submission/theme.dart';
import 'package:flutter_submission/constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                MyTopBar(),
                MyGenreButtons(),
                Container(
                  margin: EdgeInsets.only(left: defaultMargin),
                  child: Text(
                    "Coming Soon",
                    style: blueTextSyle.copyWith(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                // List Of movie
                Container(
                  margin: EdgeInsets.only(top: defaultMargin),
                  child: CarouselSlider(
                    options: CarouselOptions(
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      pauseAutoPlayOnTouch: true,
                      enlargeCenterPage: true,
                      viewportFraction: 0.8,
                    ),
                    items: imagePoster.map((item) {
                      return Carousel(imgList: item.toString());
                    }).toList(),
                  ),
                ),
                // Text Form Disney
                Container(
                  margin: EdgeInsets.only(top: 30, left: defaultMargin),
                  child: Text(
                    "Now Playing",
                    style: blueTextSyle.copyWith(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                      left: defaultMargin, right: defaultMargin),
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) {
                              return DetailScreen(
                                movie: movies[index],
                              );
                            }),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.only(top: 20),
                          height: 90,
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 90,
                                  width: 90,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(15),
                                    child: Image.asset(
                                      movies[index].poster,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Container(
                                  margin: EdgeInsets.only(left: 20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Spacer(),
                                      AutoSizeText(
                                        movies[index].title,
                                        style: blueTextSyle.copyWith(
                                            fontSize: 18, fontWeight: medium),
                                        minFontSize: 14,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      AutoSizeText(
                                        movies[index].duration,
                                        style: greyTextStyle.copyWith(
                                            fontSize: 16, fontWeight: regular),
                                        minFontSize: 12,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                      ),
                                      Row(
                                        children: [
                                          boxStar(),
                                          boxStar(),
                                          boxStar(),
                                          boxStar(),
                                        ],
                                      ),
                                      Spacer(),
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                    itemCount: movies.length,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
