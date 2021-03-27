import 'package:flutter/material.dart';

import 'components.dart';

class UpcommingCard extends StatelessWidget {
  const UpcommingCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.network(
            'https://images.chosun.com/resizer/zi79UJVrltMbR26raUDUXS2FcN0=/616x0/smart/cloudfront-ap-northeast-1.images.arcpublishing.com/chosun/BTPIRBOSBVT7GEVINZLYBL7A4Y.jpg',
            height: 69.0,
            width: 45.0,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('미나리'),
                Row(
                  children: [
                    ActiveStar,
                    ActiveStar,
                    ActiveStar,
                    ActiveStar,
                    ActiveStar
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('작가'),
                    Text('2020-03-27'),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
