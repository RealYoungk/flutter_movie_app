import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/constants.dart';

class Star {
  Widget returnStars(int star) {
    int starNum = star.toInt();
    List<Widget> starList = [];
    for (int i = 0; i < 10; i = i + 2) {
      if (i < starNum) {
        starList.add(ActiveStar);
      } else {
        starList.add(InActiveStar);
      }
    }
    return Row(
      children: starList,
    );
  }
}
