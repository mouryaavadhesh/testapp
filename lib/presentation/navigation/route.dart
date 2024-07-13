import 'package:flutter/material.dart';
import 'package:testapp/presentation/screen/movie_search.dart';


class Routes {
  static const String movieSearch = '/movieSearch';

  static Map<String, WidgetBuilder> getRoute() {
    return <String, WidgetBuilder>{
      movieSearch: (_) => MovieSearch(),

    };
  }
}
