import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/detail_screen.dart';
import 'package:flutter_movie_app/services/movie.dart';
import 'package:flutter_movie_app/services/star.dart';
import 'constants.dart';

class NowPlayingCard extends StatelessWidget {
  final movies;
  final Star star = Star();
  final Movie movie = Movie();

  NowPlayingCard({this.movies});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await movie.loadMovieDetail(movies['id']);
        await movie.loadMovieCredit(movies['id']);
        await movie.loadMovieReview(movies['id']);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailScreen(
              detailMovie: movie.detailMovie,
              casts: movie.casts,
              reviews: movie.reviews,
            ),
          ),
        );
      },
      child: Container(
        margin: EdgeInsets.only(right: 16.0),
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                '$imageUrl${movies['poster_path']}',
                height: 159.17,
                width: 104.0,
              ),
            ),
            Text(
              movies['title'],
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            star.returnStars(movies['vote_average'].toInt()),
          ],
        ),
      ),
    );
  }
}
