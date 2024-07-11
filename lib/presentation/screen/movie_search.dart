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

class _MovieSearchState extends State<MovieSearch> with TickerProviderStateMixin {
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
      create: (BuildContext context) => MovieSearchCubit(MenuInitialState(context)),
      child: BlocBuilder<MovieSearchCubit, MovieSearchState>(
        builder: (context, state) {
          Widget screenView = Container();

          if (state is LoadingState) {
            screenView = ReusableWidget.animationLayout(
                animation, MediaQuery.of(context).size.width);
          } else if (state is LoadedState) {
            screenView = _buildMenuList(state);
          } else {
            screenView = Card(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              elevation: 4.0,
              child: Container(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 10, bottom: 19),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText.textInterBold(
                        text: "Search Movie",
                        fontSize: 14)
                  ],
                ),
              ),
            );
          }
          return SafeArea(
              child: Scaffold(
                  appBar: AppBar(
                    title: MyText.textInterBold(
                        text: "Search Movie", fontSize: 16),
                    elevation: 4,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () {

                      },
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

  Widget _buildMenuList(LoadedState state) => ListView.builder(
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
            height: 150,
            padding: const EdgeInsets.all(10.0),
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [

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
