import 'package:flutter/material.dart';
import 'package:flutter_movie_app/screens/detail_screen.dart';
import 'package:flutter_movie_app/screens/list_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MovieApp',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      // home: ListScreen(),
      home: DetailScreen(),
    );
  }
}
