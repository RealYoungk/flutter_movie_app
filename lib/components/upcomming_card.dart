import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/detail_screen.dart';
import 'package:flutter_movie_app/services/movie.dart';
import 'package:flutter_movie_app/services/star.dart';

import 'constants.dart';

class UpcommingCard extends StatelessWidget {
  final int id;
  final String title;
  final String image;
  final List genres;
  final String releaseDate;
  final int star;

  final Star stars = Star();
  final Movie movie = Movie();

  UpcommingCard(
      {this.title,
      this.genres,
      this.star,
      this.releaseDate,
      this.image,
      this.id});

  Widget returnGenres() {
    List<Widget> list = [];
    for (var genre in genres) {
      list.add(
        Text(
          '${genre['name']} ',
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 13.0,
            color: Colors.grey,
          ),
        ),
      );
    }
    return Row(
      children: list,
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        await movie.loadMovieDetail(id);
        await movie.loadMovieCredit(id);
        await movie.loadMovieReview(id);
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
        margin: EdgeInsets.only(bottom: 8.0),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                '$imageUrl$image',
                height: 69.0,
                width: 45.0,
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    stars.returnStars(star),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        returnGenres(),
                        Text(
                          releaseDate,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 13.0,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
