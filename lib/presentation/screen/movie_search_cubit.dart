import 'package:flutter/widgets.dart';
import 'package:testapp/data/entities/item_model.dart';
import 'package:testapp/data/utils/base/cubit.dart';
import 'package:testapp/data/utils/extensions.dart';
import 'package:testapp/domain/repositories/movie_repo.dart';
import 'package:testapp/presentation/screen/movie_search_state.dart';

class MovieSearchCubit extends AppBloc<MovieSearchState> {
  late final BuildContext _context;
  final MovieRepo _repo = MovieRepo();
  final List<MovieResponse> movieData = [];

  MovieSearchCubit(MenuInitialState initialState) : super(initialState) {
    _context = initialState.context;
    init();
  }

  @override
  void init() {
    _getMovie();
  }

  Future<void> searchMovie(String searchText) async {
    emit(LoadingState());
    final filteredMovies = getFilteredMoviesByLocation(searchText);
    emit(LoadedState(movieData: filteredMovies));
  }

  Future<void> _getMovie() async {
    emit(LoadingState());
    _repo.getMovieData().thenListenData(onSuccess: (response) async {
      movieData.clear();
      movieData.addAll(response);
      emit(LoadedState(movieData: response));
    }, onFailed: (data) {
      emit(LoadedState(movieData: const []));
      Navigator.of(_context).pop();
    });
  }
  List<MovieResponse> getFilteredMoviesByLocation(String searchText) {
    var result = movieData; // You might not needthis line if movieData is accessible directly
    return result.where((movie) =>
        movie.locations.toLowerCase().contains(searchText.toLowerCase())
    ).toList();
  }
}
