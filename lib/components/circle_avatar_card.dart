import 'package:flutter/material.dart';

import 'constants.dart';

class CircleAvatarCard extends StatelessWidget {
  final String name;
  final String image;
  CircleAvatarCard({this.name, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 30.0,
            backgroundImage: NetworkImage(
              image != null
                  ? '$imageUrl${this.image}'
                  : 'https://frspros.com/images/easyblog_shared/July_2018/7-4-18/b2ap3_large_totw_network_profile_400.jpg',
            ),
          ),
          Container(
            width: 70.0,
            child: Text(
              name,
              style: TextStyle(
                fontSize: 12.0,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
