import 'package:flutter/material.dart';

import 'components.dart';

class TitleWidget extends StatelessWidget {
  final title;
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
