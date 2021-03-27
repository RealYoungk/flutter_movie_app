import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/now_playing_card.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.fromLTRB(16, 43, 0, 0),
              child: Text(
                '현재 상영중',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w700),
              ),
            ),
            Row(
              children: [
                NowPlayingCard(),
                NowPlayingCard(),
                NowPlayingCard(),
                NowPlayingCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
