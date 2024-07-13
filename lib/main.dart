import 'package:flutter/material.dart';
import 'package:testapp/data/utils/utils.dart';
import 'package:testapp/presentation/navigation/route.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Utils _utils = Utils();

  @override
  void initState() {
    super.initState();
    _utils.init();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Test',
        routes: Routes.getRoute(),
        initialRoute: Routes.movieSearch,
        builder: (context, child) {
          return MediaQuery(
            data: MediaQuery.of(context)
                .copyWith(textScaler: TextScaler.linear(1.0)),
            child: child!,
          );
        });
  }
}