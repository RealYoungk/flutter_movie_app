import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/now_playing_card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          margin: EdgeInsets.fromLTRB(16.0, 16.0, 0, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                '현재 상영중',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
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
              SizedBox(
                height: 30.0,
              ),
              Text('data'),
            ],
          ),
        ),
      ),
    );
  }
}
