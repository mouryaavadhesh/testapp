import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:testapp/data/utils/print_utils.dart';

class Utils {
  static Map<int, String> languagesMap = {
    0: 'en',
  };
  static String appName = '';
  static String packageName = '';

  static String version = '';
  static String buildNumber = '';
  static late API _api;
  static SignUpRegistrationResponse user =
      SignUpRegistrationResponse.fromJson(Map());

  Future<void> init() async {
    _api = API();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();

    appName = packageInfo.appName;
    packageName = packageInfo.packageName;
    version = packageInfo.version;
    buildNumber = packageInfo.buildNumber;
  }

  static TabBarItems getTabType(int index) {
    return TabBarItems.values.firstWhere((element) => element.id == index);
  }

  static Future<SignUpRegistrationResponse> getUserDetails() async {
    String userString = getStringAsync(PrefKeys.userDetail);

    if (userString.isNotEmpty) {
      user = SignUpRegistrationResponse.fromJson(jsonDecode(userString));
      user.token = getStringAsync(Constants.authToken);
      jsonDecode(userString);
    }
    return user;
  }

  static SignUpRegistrationResponse fetchUserDetailsSync() {
    String userData = getStringAsync(PrefKeys.userDetail);
    if (userData.isNotEmpty) {
      user = SignUpRegistrationResponse.fromJson(jsonDecode(userData));
      user.token = getStringAsync(Constants.authToken);
      return user;
    }
    return SignUpRegistrationResponse.fromJson({});
  }

  static bool isCompanyRegistered() {
    String userData = getStringAsync(PrefKeys.userDetail);
    if (userData.isNotEmpty) {
      var user = SignUpRegistrationResponse.fromJson(json.decode(userData));
      if (user.userID > 0) return true;
    }
    return false;
  }

  static API getApiInstance() => _api;

/*  static Future<SignUpRegistrationResponse> getUserDetails() async =>
      SignUpRegistrationResponse.fromJson(json.decode(
          Utils.getSharedPrefInstance().getString(PrefKeys.userDetails)));*/

  static void launchURL(String url) {
    // FlutterWebBrowser.openWebPage(
    //     url: url,
    //     // customTabsOptions:
    //     //     CustomTabsOptions( colorScheme: Theme.of(context).brightness == Brightness.light
    //     //         ? CustomTabsColorScheme.light
    //     //         : CustomTabsColorScheme.dark,)
    //              );
  }

  String dateFormatter(DateTime date, getMonthInInteger) {
    dynamic monthData =
        '{ "1" : "Jan", "2" : "Feb", "3" : "Mar", "4" : "Apr", "5" : "May", "6" : "June", "7" : "Jul", "8" : "Aug", "9" : "Sep", "10" : "Oct", "11" : "Nov", "12" : "Dec" }';

    return !getMonthInInteger
        ? date.day.toString() +
            ' ' +
            json.decode(monthData)['${date.month}'] +
            ' ' +
            date.year.toString()
        : date.day.toString() +
            '/' +
            date.month.toString() +
            '/' +
            date.year.toString();
  }

  /* checkUnlocalisedLanguageKeys() {
    try {
      Map<String, Function> baseMap = en.messages.messages;
      Map<String, Function> bnMap = bn.messages.messages;
      Map<String, Function> guMap = gu.messages.messages;
      Map<String, Function> hiMap = hi.messages.messages;
      Map<String, Function> knMap = kn.messages.messages;
      Map<String, Function> mrMap = mr.messages.messages;
      Map<String, Function> taMap = ta.messages.messages;
      Map<String, Function> teMap = te.messages.messages;

      Map<String, Map<String, Function>> listLang = Map();
      listLang["bn"] = bnMap;
      listLang["gu"] = guMap;
      listLang["hi"] = hiMap;
      listLang["kn"] = knMap;
      listLang["mr"] = mrMap;
      listLang["ta"] = taMap;
      listLang["te"] = teMap;

      Map<String, List<String>> unlocalisedLang = Map();

      for (String lang in listLang.keys) {
        Map<String, Function> tempMap = listLang[lang];

        if (tempMap.keys.length == 0) {
          continue;
        }

        List<String> unlocalisedKeys = [];

        for (String s in baseMap.keys) {
          if (tempMap[s] == null) {
            unlocalisedKeys.add(s);
          } else if (tempMap[s]() == "") {
            unlocalisedKeys.add(s);
          } else if (tempMap[s]() == baseMap[s]()) {
            unlocalisedKeys.add(s);
          } else {}
        }
        unlocalisedLang[lang] = unlocalisedKeys;
      }
      String mapToString = jsonEncode(unlocalisedLang);
    } catch (e) {}
  }*/

  static bool identicalString(String s1, String s2) {
    return s1 == s2;
  }

  static List<Locale> locales() => [
        Locale('en'),
      ];

  static void changeThemeToLightMode() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
            systemNavigationBarIconBrightness: Brightness.dark,
            /* set Status bar icons color in Android devices.*/
            statusBarBrightness:
                Brightness.dark) /* set Status bar icon color in iOS. */
        );
  }

  static void changeThemeToDarkMode() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        statusBarColor: ThemeColor.blue_button_color,
        statusBarIconBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.light));
  }

  static getCurrentDate() {
    return '\$D_${new DateTime.now().millisecondsSinceEpoch}';
  }

  static Future<void> captureException(
      Object exception, StackTrace stackTrace) async {
    if (kReleaseMode) {
      print('\x1B[31m$exception====>$stackTrace\x1B[0m');
    } else {
      print('\x1B[31m$exception====>$stackTrace\x1B[0m');
    }
  }

  static printNormal(String value) {
      PrintUtils.printColorText('-----Start-------', PrintColor.Yellow);
      PrintUtils.printColorText(value, PrintColor.Black);
      PrintUtils.printColorText('-----End-------', PrintColor.Cyan);

  }


}
