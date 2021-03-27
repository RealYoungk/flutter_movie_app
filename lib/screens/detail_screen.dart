import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/components.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: NetworkImage(
                    'https://images.chosun.com/resizer/zi79UJVrltMbR26raUDUXS2FcN0=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BTPIRBOSBVT7GEVINZLYBL7A4Y.jpg'),
                fit: BoxFit.cover)),
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
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(
                      'https://images.chosun.com/resizer/zi79UJVrltMbR26raUDUXS2FcN0=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BTPIRBOSBVT7GEVINZLYBL7A4Y.jpg',
                      height: 159.0,
                      width: 104.0,
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 60.0),
                          Text(
                            'data',
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
                              'Adult',
                              style: TextStyle(
                                fontSize: 8.0,
                                color: Colors.red,
                              ),
                            ),
                          ),
                          Text('감동, 멜로'),
                          Text('2021-03-27   발매'),
                          Row(
                            children: [
                              ActiveStar,
                              ActiveStar,
                              ActiveStar,
                              ActiveStar,
                              ActiveStar,
                            ],
                          )
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
