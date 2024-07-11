import 'package:flutter/cupertino.dart';
import 'package:testapp/data/entities/item_model.dart';
import 'package:testapp/data/utils/base/cubit.dart';


class MovieSearchState extends BlocState {}

class MenuInitialState extends MovieSearchState {
  final BuildContext context;

  MenuInitialState(this.context);
}

class LoadingState extends MovieSearchState {}

class ErrorState extends MovieSearchState {}

class LoadedState extends MovieSearchState {
  final List<Movie> movieData;

  LoadedState({required this.movieData});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      super == other &&
          other is LoadedState &&
          runtimeType == other.runtimeType &&
          movieData == other.movieData;

  @override
  int get hashCode => super.hashCode ^ movieData.hashCode;
}
