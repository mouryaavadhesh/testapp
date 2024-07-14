import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testapp/data/entities/item_model.dart';
import 'package:testapp/data/utils/constant/constants.dart';
import 'package:testapp/presentation/screen/movie_search_cubit.dart';
import 'package:testapp/presentation/screen/movie_search_state.dart';
import 'package:testapp/presentation/template/text.dart';
import 'package:testapp/presentation/widgets/reusable_widget.dart';

class MovieSearch extends StatefulWidget {
  @override
  _MovieSearchState createState() => _MovieSearchState();
}

class _MovieSearchState extends State<MovieSearch>
    with TickerProviderStateMixin {
  // Dummy Product Data Here
  late Animation animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        duration: const Duration(milliseconds: 1500), vsync: this);
    animation = Tween<double>(
      begin: -3,
      end: 10,
    ).animate(
      CurvedAnimation(parent: animationController, curve: Curves.linear),
    )..addListener(() {});
    animationController.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) =>
          MovieSearchCubit(MenuInitialState(context)),
      child: BlocBuilder<MovieSearchCubit, MovieSearchState>(
        builder: (context, state) {
          Widget screenView = Container();

          if (state is LoadingState) {
            screenView = ReusableWidget.animationLayout(
                animation, MediaQuery.of(context).size.width);
          } else if (state is LoadedState) {
            screenView = CustomScrollView(
              slivers: <Widget>[
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) => const Card(
                      margin: EdgeInsets.only(
                          top: 20, left: 10, right: 10, bottom: 10),
                      child: SizedBox(
                        height: 60,
                        child: Padding(
                          padding: EdgeInsets.only(
                              left: Dimension.leftMarginScreen,
                              top: 5,
                              right: Dimension.leftMarginScreen,
                              bottom: 5),
                          child: TextField(
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              filled: false,
                              suffixIcon: Icon(
                                Icons.search,
                              ),
                              fillColor: Color(0xFFFAFAFA),
                              hintStyle: TextStyle(
                                  color: Color(0xFFd0cece), fontSize: 14),
                              hintText: "Search Movie By Location",
                            ),
                          ),
                        ),
                      ),
                    ),
                    childCount: 1,
                  ),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) =>
                        _buildMovieList(state.movieData[index]),
                    childCount: state.movieData.length,
                  ),
                )
              ],

            );
          } else {
            screenView = Container(
              height:500,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              child: MyText.textBold(text: "No Movie Found ", fontSize: 14),
            );
          }
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: MyText.textBold(text: "Search Movie", fontSize: 16),
                elevation: 4,
              ),
              body: screenView);
        },
      ),
    );
  }

  Widget _buildMovieList(MovieResponse movieResponse) => Card(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(10.0)),
        elevation: 4.0,
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              MyText.textRegular(
                  text: movieResponse.productionCompany,
                  fontSize: 14,
                  maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.distributor, fontSize: 14, maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.director, fontSize: 14, maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.actor1, fontSize: 14, maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.actor2, fontSize: 14, maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.actor3, fontSize: 14, maxLines: 2),
              MyText.textRegular(
                  text: movieResponse.locations, fontSize: 14, maxLines: 2),
            ],
          ),
        ),
      );

  @override
  void dispose() {
    animation.removeListener(() {});
    animationController.dispose();
    super.dispose();
  }
}
