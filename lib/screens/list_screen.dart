import 'package:flutter/material.dart';
import 'package:flutter_movie_app/components/bot_movie_widget.dart';
import 'package:flutter_movie_app/components/now_playing_card.dart';
import 'package:flutter_movie_app/components/title_widget.dart';
import 'package:flutter_movie_app/screens/loading_screen.dart';
import 'package:flutter_movie_app/services/movie.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  bool loading = true;
  Movie movie = Movie();

  @override
  void initState() {
    super.initState();
    iniStateAsyncMethod();
  }

  void iniStateAsyncMethod() async {
    await movie.loadNowPlayingMovie();
    await movie.loadUpcommingMovie();
    await movie.loadPopularMovie();
    await movie.loadTopRatedMovie();
    setState(() {
      loading = !loading;
    });
  }

  List returnNowPlayingCards() {
    List<Widget> list = [];
    for (var movie in movie.nowPlayingMovies) {
      list.add(
        NowPlayingCard(
          movies: movie,
        ),
      );
    }
    list.add(
      TextButton(
        onPressed: () async {
          movie.page++;
          await movie.loadNowPlayingMovie();
          setState(() {});
        },
        child: Text('더보기'),
      ),
    );
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? LoadingScreen()
        : Scaffold(
            body: SafeArea(
              child: SingleChildScrollView(
                child: Container(
                  margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          TitleWidget(
                            title: '현재 상영중',
                          ),
                          Container(
                            height: 200.0,
                            padding: EdgeInsets.zero,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: returnNowPlayingCards(),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BotMovieWidget(
                        title: '개봉 예정',
                        movie: movie.upcommingMovies,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BotMovieWidget(
                        title: '인기',
                        movie: movie.popularMovies,
                      ),
                      SizedBox(
                        height: 30.0,
                      ),
                      BotMovieWidget(
                        title: '높은 평점',
                        movie: movie.topRatedMovies,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
  }
}
