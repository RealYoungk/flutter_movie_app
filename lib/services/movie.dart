import 'package:flutter_movie_app/components/constants.dart';
import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:flutter_movie_app/.env.dart';

class Movie {
  int page = 1;
  List nowPlayingMovies = [];
  List upcommingMovies = [];
  List popularMovies = [];
  List topRatedMovies = [];
  List casts = [];
  List reviews = [];
  var detailMovie;

  Future loadNowPlayingMovie() async {
    var url = Uri.https(api, '/3/movie/now_playing', {
      'api_key': apiKey,
      'language': 'ko',
      'page': page.toString(),
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var results = jsonResponse['results'];
      for (var movie in results) {
        // await loadNowPlayingMovieDetail(movie['id']);
        nowPlayingMovies.add(movie);
      }
      print(nowPlayingMovies.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadUpcommingMovie() async {
    List list = [];

    var url = Uri.https(api, '/3/movie/upcoming', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var results = jsonResponse['results'];

      for (var movie in results) {
        // upcommingMovies.add(movie);
        list.add(movie);
      }
      // upcommingMovies = upcommingMovies.sublist(0, 3);
      list = list.sublist(0, 3);

      for (var movie in list) {
        await loadUpcommingMovieDetail(movie['id']);
      }

      print(upcommingMovies.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadPopularMovie() async {
    List list = [];

    var url = Uri.https(api, '/3/movie/popular', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var results = jsonResponse['results'];

      for (var movie in results) {
        // popularMovies.add(movie);
        list.add(movie);
      }
      // popularMovies = popularMovies.sublist(0, 3);
      list = list.sublist(0, 3);
      for (var movie in list) {
        await loadPopularMovieDetail(movie['id']);
      }

      print(popularMovies.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadTopRatedMovie() async {
    List list = [];

    var url = Uri.https(api, '/3/movie/top_rated', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var jsonResponse = convert.jsonDecode(response.body);
      var results = jsonResponse['results'];
      for (var movie in results) {
        // topRatedMovies.add(movie);
        list.add(movie);
      }
      // topRatedMovies = topRatedMovies.sublist(0, 3);
      list = list.sublist(0, 3);
      for (var movie in list) {
        await loadTopRatedMovieDetail(movie['id']);
      }

      print(topRatedMovies.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadMovieDetail(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = convert.jsonDecode(response.body);
      detailMovie = result;
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadPopularMovieDetail(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = convert.jsonDecode(response.body);
      popularMovies.add(result);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadTopRatedMovieDetail(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = convert.jsonDecode(response.body);
      topRatedMovies.add(result);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadUpcommingMovieDetail(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var result = convert.jsonDecode(response.body);
      upcommingMovies.add(result);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadMovieCredit(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID/credits', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var results = convert.jsonDecode(response.body);
      results = results['cast'];
      for (var cast in results) {
        casts.add(cast);
      }
      print(casts.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }

  Future loadMovieReview(int movieID) async {
    var url = Uri.https(api, '/3/movie/$movieID/reviews', {
      'api_key': apiKey,
      'language': 'ko',
    });

    var response = await http.get(url);
    if (response.statusCode == 200) {
      var results = convert.jsonDecode(response.body);
      var reviews = results['results'];
      for (var review in reviews) {
        this.reviews.add(review);
      }
      print(this.reviews.length);
    } else {
      print('Request failed with status: ${response.statusCode}.');
    }
  }
}
