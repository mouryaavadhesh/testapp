import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:testapp/data/utils/print_utils.dart';
import 'package:testapp/data/utils/utils.dart';

class DioUtils {
  static printAPIRequest(RequestOptions? requestOptions, List<String>? urls,
      {bool headerRequired = false, bool responseRequired = false}) {
    try {
      if (urls != null && urls.isNotEmpty) {
        urls
            .where(
                (element) => requestOptions!.uri.toString().contains(element))
            .forEach((element) {
          _printRequest(requestOptions,
              headerRequired: headerRequired,
              responseRequired: responseRequired);
        });
      } else {
        _printRequest(requestOptions,
            headerRequired: headerRequired, responseRequired: responseRequired);
      }
    } catch (exception, stackTrace) {
      Utils.captureException(exception, stackTrace);
    }
  }

  static printAPIResponse(Response? response, List<String>? urls,
      {bool headerRequired = false, bool responseRequired = false}) {
    try {
      if (urls != null && urls.isNotEmpty) {
        urls
            .where((element) =>
                response!.requestOptions.uri.toString().contains(element))
            .forEach((element) {
          _printResponse(response,
              headerRequired: headerRequired,
              responseRequired: responseRequired);
        });
      } else {
        _printResponse(response,
            headerRequired: headerRequired, responseRequired: responseRequired);
      }
    } catch (exception, stackTrace) {
      Utils.captureException(exception, stackTrace);
    }
  }

  static _printRequest(RequestOptions? requestOptions,
      {bool headerRequired = false, bool responseRequired = false}) {
    if (requestOptions != null) {
      PrintUtils.printColorText(
          "API====>${requestOptions.uri}", PrintColor.Magenta);
      PrintUtils.printColorText(
          "REQUEST TYPE====>${requestOptions.method}", PrintColor.Magenta);
      PrintUtils.printColorText(
          "TOKEN====>${requestOptions.headers["Authorization"]}", PrintColor.Magenta);
      PrintUtils.printColorText(
          "PAYLOAD====>${requestOptions.data is FormData ? (requestOptions.data as FormData).fields.toString() : requestOptions.data}",
          PrintColor.Magenta);
      if (headerRequired) {
        PrintUtils.printColorText(
            "HEADER==>${requestOptions.headers}", PrintColor.Magenta);
      }
    }
  }

  static _printResponse(Response? response,
      {bool headerRequired = false, bool responseRequired = false}) {
    if (response != null) {
      PrintUtils.printColorText(
          "API====>${response.requestOptions.uri}", PrintColor.Green);
      PrintUtils.printColorText(
          "REQUEST TYPE====>${response.requestOptions.method}",
          PrintColor.Green);
      PrintUtils.printColorText(
          "TOKEN====>${response.requestOptions.headers["Authorization"]}",
          PrintColor.Green);
      PrintUtils.printColorText(
          "PAYLOAD====>${response.requestOptions.data is FormData ? (response.requestOptions.data as FormData).fields.toString() : response.requestOptions.data}",
          PrintColor.Green);
      if (headerRequired) {
        PrintUtils.printColorText(
            "HEADER==>${response.requestOptions.headers}", PrintColor.Green);
      }
      if (response.statusCode == 200) {
        PrintUtils.printColorText(
            "STATUS CODE====>${response.statusCode}", PrintColor.Green);
      } else {
        PrintUtils.printColorText(
            "STATUS CODE====>${response.statusCode}", PrintColor.Red);
      }
      if (responseRequired && response.data != null) {
        if (response.data.toString().contains("{")) {
          log("RESPONSE====>${PrintUtils.convertToJsonString(response.data)}");
        } else {
          log("RESPONSE====>${response.data}");
        }
      }
    }
  }

  static handleErrorStatusCode(Response? response,
      {List<CustomCallAtStatusCode>? customFunctionCalls,
      bool? isNavigationToMaintenanceEnabled}) async {

    if (response != null) {
      String? serverMessage;
      String message = "";
      var htmlRegex = new RegExp("<html>");
      if (response.data != null) {
        if (response.data.toString().contains("Large")) {
          serverMessage =
              "imageTooLarge"; //AppInstance().getContext.localisation.imageTooLarge;
        } else if (htmlRegex.hasMatch(response.data.toString())) {
          serverMessage = "apiResponseFailMsg";
          //  AppInstance().getContext.localisation.apiResponseFailMsg;
        } else if (response.data is Map) {
          Error400 error = Error400.fromJson(response.data);
          serverMessage =
              "${error.message}${error.debugInfo!.correlationId!.isNotEmpty ? " | Incident Id: ${error.debugInfo!.correlationId}" : ""}";
        } else if (response.data is String &&
            (response.data as String).contains("[{}:]")) {
          Error400 error = Error400.fromJson(
              jsonDecode(response.data) ?? {} as Map<String, dynamic>);
          serverMessage =
              "${error.message}${error.debugInfo!.correlationId!.isNotEmpty ? " | Incident Id: ${error.debugInfo!.correlationId}" : ""}";
        }
      }
      int code = response.statusCode!;
      if (code < 500 && code >= 400) {
        switch (code) {
          case 400:
            message = "Bad Request, Please check and try again";
            break;
          case 401:
            message = "Session Expired, Please login again";
            break;
          case 402:
            message = "Payment Required, Please check";
            break;
          case 403:
            message = "Forbidden, Not allowed for you";
            break;
          case 404:
            message = "Not Found";
            break;
          case 405:
            message = "Method Not Allowed, Please check";
            break;
          case 406:
            message = "Not Acceptable, Please check";
            break;
          case 407:
            message = "Proxy Authentication Required";
            break;
          case 408:
            message = "Request Timeout, Please try again in some time";
            break;
          case 409:
            message = "Conflict, Check your data";
            break;
          case 413:
            message = "PayLoad too large, Please check";
            break;
          case 414:
            message = "URI too large, Please check";
            break;
          case 415:
            message = "Unsupported Media Type, Please check file";
            break;
          case 429:
            message = "Too many request, Please try after some time";
            break;
        }
      }
      if (code >= 500) {
        switch (code) {
          case 500:
            message = "Internal Server Error, Please try again";
            break;
          case 501:
            message = "Not implemented on server, Please check";
            break;
          case 502:
            // if (isNavigationToMaintenanceEnabled != null &&
            //     isNavigationToMaintenanceEnabled) {
            //   await Navigator.of(AppInstance().navigatorKey.currentContext!)
            //       .pushNamedAndRemoveUntil(
            //           Routes.maintenance, (Route<dynamic> route) => false);
            // }
            message = "Bad Gateway, Check the address";
            break;
          case 503:
            message = "Service not available, Please try after some time";
            break;
          case 504:
            message = "Gateway Timeout, Please try after some time";
            break;
          case 505:
            message = "Http version not supported";
            break;
          case 506:
            message = "Variant Also Negotiates";
            break;
          case 507:
            message = "Insufficient Storage";
            break;
          case 508:
            message = "Loop Detected";
            break;
          case 510:
            message = "Not extended";
            break;
          case 511:
            message = "Network Authentication Required";
            break;
        }
      }
      ReusableWidget.toastMsg(serverMessage ?? message);

      if (customFunctionCalls != null) {
        customFunctionCalls.forEach((element) {
          if (code == element.statusCode) {
            element.function.call();
          }
        });
      }
    } else {
      ReusableWidget.toastMsg("No response from server");
    }
  }
}

class CustomCallAtStatusCode {
  int statusCode;
  Function function;

  CustomCallAtStatusCode({required this.statusCode, required this.function});
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) =>
      super.createHttpClient(context)
        ..badCertificateCallback =
            (X509Certificate cert, String host, int port) =>
                host == ApiUrls.baseURI;
}
