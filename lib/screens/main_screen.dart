import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/bot_movie_widget.dart';
import 'package:flutter_movie_app/components/now_playing_card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      '현재 상영중',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.w700),
                    ),
                    Container(
                      height: 200.0,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          NowPlayingCard(),
                          NowPlayingCard(),
                          NowPlayingCard(),
                          NowPlayingCard(),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                BotMovieWidget(title: '개봉 예정'),
                SizedBox(
                  height: 30.0,
                ),
                BotMovieWidget(title: '인기'),
                SizedBox(
                  height: 30.0,
                ),
                BotMovieWidget(title: '높은평점'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
