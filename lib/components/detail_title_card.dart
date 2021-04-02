import 'package:flutter/material.dart';
import 'package:flutter_movie_app/services/star.dart';
import 'constants.dart';

class DetailTitleCard extends StatelessWidget {
  final String image;
  final String title;
  final bool adult;
  final List genres;
  final String releaseDate;
  final int voteAverage;
  final Star star = Star();

  DetailTitleCard(
      {this.image,
      this.title,
      this.adult,
      this.genres,
      this.releaseDate,
      this.voteAverage});

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
    return Container(
      height: 160.0,
      color: Colors.transparent,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            image,
            height: 159.0,
            width: 104.0,
          ),
          Container(
            margin: EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 60.0),
                Text(
                  title,
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 12.0,
                  ),
                ),
                Container(
                  width: 27.0,
                  height: 12.0,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          3.0,
                        ),
                      ),
                      border: Border.all(color: Colors.red)),
                  child: Text(
                    adult ? 'adult' : 'all',
                    style: TextStyle(
                      fontSize: 9.0,
                      color: Colors.red,
                    ),
                  ),
                ),
                returnGenres(),
                // Text(genres[0]['name']),
                Text('$releaseDate 발매'),
                star.returnStars(this.voteAverage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
