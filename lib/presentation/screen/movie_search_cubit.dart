import 'package:flutter/widgets.dart';
import 'package:testapp/data/entities/item_model.dart';
import 'package:testapp/data/utils/base/cubit.dart';
import 'package:testapp/data/utils/extensions.dart';
import 'package:testapp/domain/repositories/movie_repo.dart';
import 'package:testapp/presentation/screen/movie_search_state.dart';

class MovieSearchCubit extends AppBloc<MovieSearchState> {
  late final BuildContext _context;
  final MovieRepo _repo = MovieRepo();

  MovieSearchCubit(MenuInitialState initialState) : super(initialState) {
    _context = initialState.context;
    init();
  }

  @override
  void init() {
    _getMovie();
  }

  Future<void> _getMovie() async {
    emit(LoadingState());
    _repo.getMovieData().thenListenData(onSuccess: (response) async {
      emit(LoadedState(movieData: response));
    }, onFailed: (data) {
      emit(LoadedState(movieData: []));
      Navigator.of(_context).pop();
    });
  }
}
