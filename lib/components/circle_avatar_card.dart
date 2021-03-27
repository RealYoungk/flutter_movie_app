import 'package:flutter/material.dart';

class CircleAvatarCard extends StatelessWidget {
  final String name;
  CircleAvatarCard({this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 20.0),
      child: Column(
        children: [
          CircleAvatar(
            maxRadius: 30.0,
            // backgroundColor: Colors.brown.shade800,
            // child: Text('AH'),
            backgroundImage: NetworkImage(
              'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/cbdef037365169.573db7853cebb.jpg',
            ),
          ),
          Text(name),
        ],
      ),
    );
  }
}
