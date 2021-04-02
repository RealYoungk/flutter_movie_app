import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/detail_title_card.dart';
import 'package:flutter_movie_app/components/title_widget.dart';
import 'package:flutter_movie_app/components/upcomming_card.dart';

class BotMovieWidget extends StatelessWidget {
  final String title;
  final movie;
  BotMovieWidget({this.title, this.movie});

  List returnUpcommingCards() {
    List<Widget> list = [];
    list.add(
      TitleWidget(
        title: title,
      ),
    );
    for (var m in movie) {
      list.add(
        UpcommingCard(
          id: m['id'],
          title: m['title'],
          genres: m['genres'],
          releaseDate: m['release_date'],
          star: m['vote_average'].toInt(),
          image: m['poster_path'],
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: returnUpcommingCards(),
    );
  }
}
