import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/circle_avatar_card.dart';
import 'package:flutter_movie_app/components/constants.dart';
import 'package:flutter_movie_app/components/detail_title_card.dart';
import 'package:flutter_movie_app/components/review_card.dart';
import 'package:flutter_movie_app/components/title_widget.dart';

class DetailScreen extends StatelessWidget {
  final detailMovie;
  final casts;
  final reviews;

  DetailScreen({this.detailMovie, this.casts, this.reviews});

  Widget returnReviews() {
    List<Widget> list = [];
    if (reviews == null || reviews.length == 0) {
      return Text('등록된 리뷰가 없습니다');
    } else {
      for (var review in reviews) {
        list.add(
          ReviewCard(
            review: review['content'],
            author: review['author'],
          ),
        );
      }
      return Column(
        children: list,
      );
    }
  }

  List returnCasts() {
    List<Widget> list = [];
    for (var cast in casts) {
      list.add(
        CircleAvatarCard(
          name: cast['name'],
          image: cast['profile_path'],
        ),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              '$imageUrl${detailMovie['poster_path']}',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: 169.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(16.0),
                    bottom: Radius.circular(0),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      offset: Offset(0.0, 1.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(16.0, 118.0, 16.0, 0),
                child: Column(
                  children: [
                    DetailTitleCard(
                      title: detailMovie['title'],
                      image: '$imageUrl${detailMovie['poster_path']}',
                      releaseDate: detailMovie['release_date'],
                      adult: detailMovie['adult'],
                      genres: detailMovie['genres'],
                      voteAverage: detailMovie['vote_average'].toInt(),
                    ),
                    Container(
                      height: 500,
                      child: ListView(
                        padding: EdgeInsets.zero,
                        children: [
                          TitleWidget(
                            title: '개요',
                          ),
                          Text(
                            detailMovie['overview'],
                          ),
                          TitleWidget(
                            title: '주요 출연진',
                          ),
                          Container(
                            height: 100.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: returnCasts(),
                            ),
                          ),
                          TitleWidget(
                            title: '리뷰',
                          ),
                          Container(
                            child: returnReviews(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // child: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     DetailTitleCard(),
                //     Container(
                //       child: Column(
                //         crossAxisAlignment: CrossAxisAlignment.start,
                //         children: [
                //           TitleWidget(
                //             title: '개요',
                //           ),
                //           Text(
                //               '지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말'),
                //           TitleWidget(
                //             title: '주요 출연진',
                //           ),
                //           Row(
                //             children: [
                //               CircleAvatarCard(
                //                 name: '김수로',
                //               ),
                //               CircleAvatarCard(
                //                 name: '김여정',
                //               ),
                //               CircleAvatarCard(
                //                 name: '김영진',
                //               ),
                //             ],
                //           ),
                //           TitleWidget(
                //             title: '리뷰',
                //           ),
                //           Container(
                //             child: Column(
                //               children: [
                //                 ReviewCard(
                //                   review:
                //                       '개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리',
                //                 ),
                //                 ReviewCard(
                //                   review:
                //                       '개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리개꿀잼따리',
                //                 ),
                //               ],
                //             ),
                //           )
                //         ],
                //       ),
                //     ),
                //   ],
                // ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
