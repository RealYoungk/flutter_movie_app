import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/components.dart';
import 'package:flutter_movie_app/components/detail_title_card.dart';
import 'package:flutter_movie_app/components/title_widget.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
                'https://images.chosun.com/resizer/zi79UJVrltMbR26raUDUXS2FcN0=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BTPIRBOSBVT7GEVINZLYBL7A4Y.jpg'),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DetailTitleCard(),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          TitleWidget(
                            title: '개요',
                          ),
                          Text(
                              '지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말지구종말'),
                          TitleWidget(
                            title: '주요 출연진',
                          ),
                          TitleWidget(
                            title: '리뷰',
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
