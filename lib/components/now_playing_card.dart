import 'package:flutter/material.dart';
import 'components.dart';

class NowPlayingCard extends StatelessWidget {
  const NowPlayingCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 16.0),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://images.chosun.com/resizer/zi79UJVrltMbR26raUDUXS2FcN0=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BTPIRBOSBVT7GEVINZLYBL7A4Y.jpg',
              height: 159.17,
              width: 104.0,
            ),
          ),
          Text(
            '미나리',
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w500,
              color: Colors.black,
            ),
          ),
          Row(
            children: [
              ActiveStar,
              ActiveStar,
              ActiveStar,
              InActiveStar,
              InActiveStar,
            ],
          )
        ],
      ),
    );
  }
}
