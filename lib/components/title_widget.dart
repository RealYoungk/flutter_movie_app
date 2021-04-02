import 'package:flutter/material.dart';

import 'constants.dart';

class TitleWidget extends StatelessWidget {
  final String title;
  TitleWidget({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        title,
        style: kTitleTextStyle,
      ),
      margin: EdgeInsets.symmetric(
        vertical: 10.0,
      ),
    );
  }
}
