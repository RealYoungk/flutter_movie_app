import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/upcomming_card.dart';

class BotMovieWidget extends StatelessWidget {
  final String title;
  BotMovieWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
        ),
        UpcommingCard(),
        UpcommingCard(),
        UpcommingCard(),
      ],
    );
  }
}
