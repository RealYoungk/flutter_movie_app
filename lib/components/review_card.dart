import 'package:flutter/material.dart';

class ReviewCard extends StatelessWidget {
  final String review;
  final String author;
  ReviewCard({this.review, this.author});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        8.0,
      ),
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.all(
          Radius.circular(
            8.0,
          ),
        ),
        border: Border.all(
          color: Colors.black12,
          width: 3.0,
        ),
      ),
      child: Column(
        children: [
          Expanded(child: Text(review)),
          Container(
            child: Text(
              author,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            alignment: Alignment.bottomRight,
          ),
        ],
      ),
    );
  }
}
