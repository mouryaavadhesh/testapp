import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
            screenView = _buildMovieList(state);
          } else {
            screenView = Container(
              width: double.infinity,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 20, bottom: 20),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(5.0),
                ),
              ),
              child: MyText.textBold(text: "Search Movie", fontSize: 14),
            );
          }
          return SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                    title: MyText.textBold(
                        text: "Search Movie", fontSize: 16),
                    elevation: 4,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {},
                    ),
                  ),
                  body: Stack(
                    children: [
                      screenView,
                    ],
                  )));
        },
      ),
    );
  }

  Widget _buildMovieList(LoadedState state) => ListView.builder(
        itemCount: state.movieData.length,
        //  respondedData3['data'].length,
        shrinkWrap: true,
        scrollDirection: Axis.vertical,
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) => Card(
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
                    text: state.movieData[index].productionCompany, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].distributor, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].director, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].actor1, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].actor2, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].actor3, fontSize: 14,maxLines: 2),
                MyText.textRegular(
                    text: state.movieData[index].locations, fontSize: 14,maxLines: 2),

              ],
            ),
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
