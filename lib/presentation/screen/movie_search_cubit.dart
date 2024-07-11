import 'package:flutter/widgets.dart';
import 'package:testapp/data/utils/base/cubit.dart';
import 'package:testapp/presentation/screen/movie_search_state.dart';


class MovieSearchCubit extends AppBloc<MovieSearchState> {
  late final BuildContext _context;


 // final List<GetMenu> _getMenu = [];

  MovieSearchCubit(MenuInitialState initialState) : super(initialState) {
    _context = initialState.context;
    init();
  }

  @override
  void init() {

  }



}
