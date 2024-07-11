import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';

class InternetConnection {
  static Connectivity connectivity = Connectivity();

  static Future<bool> internetConnectivity() async {
    try {
      late List<ConnectivityResult> result;
      result = await connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.ethernet)) {
        return true;
      } else {
        //ReusableWidget.toastMsg("No Internet");
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }

  static Future<bool> isInternetAvailable() async {
    try {
      late List<ConnectivityResult> result;
      result = await connectivity.checkConnectivity();
      if (result.contains(ConnectivityResult.mobile) ||
          result.contains(ConnectivityResult.wifi) ||
          result.contains(ConnectivityResult.ethernet)) {
        return true;
      } else {
        return false;
      }
    } on SocketException catch (_) {
      return false;
    }
  }
}
