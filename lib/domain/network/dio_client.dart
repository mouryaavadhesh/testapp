import 'dart:io';

import 'package:dio/dio.dart';
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart';
import 'package:flutter/foundation.dart';
import 'package:testapp/data/api/api_urls.dart';
import 'package:testapp/data/utils/constant/constants.dart';
import 'package:testapp/data/utils/utils.dart';
import 'package:testapp/domain/network/dio_utils.dart';

class DioClient {
  late Dio dio;
  String accessToken = '';
  bool addContentTypeHeader = true, connectionStatus = true;

  DioClient.init() {
    initDio();
  }

  initDio() {
    try {
      dio = Dio(BaseOptions(
        baseUrl: ApiUrls.baseURI,
        connectTimeout: const Duration(milliseconds: 180000),
        receiveTimeout: const Duration(milliseconds: 180000),
      ));

      dio.interceptors.addAll([
        if (kDebugMode)
          LogInterceptor(
              responseBody: false,
              error: false,
              requestHeader: false,
              responseHeader: false,
              request: false,
              requestBody: false),
        DioCacheInterceptor(
            options: CacheOptions(
                store: MemCacheStore(),
                policy: CachePolicy.noCache,
                hitCacheOnErrorExcept: [400, 401, 403],
                maxStale: const Duration(seconds: 5),
                priority: CachePriority.high,
                cipher: null,
                keyBuilder: CacheOptions.defaultCacheKeyBuilder,
                allowPostMethod: true)),
        InterceptorsWrapper(
          onRequest: (options, handler) async {

            if (Constants.enableLogging) {
              DioUtils.printAPIRequest(options, []);
            }
            if (addContentTypeHeader) {
              options.headers[HttpHeaders.contentTypeHeader] =
              'application/json';
            }
            if (accessToken.isNotEmpty) {
              options.headers["Authorization"] = '$accessToken';
            }
            return handler.next(options);
          },
          onResponse: (response, handler) {
            if (Constants.enableLogging) {
              DioUtils.printAPIResponse(response, Constants.filterApi,
                  responseRequired: true, headerRequired: false);
            }

            return handler.next(response);
          },
          onError: (e, handler) async {
            if (Constants.enableLogging) {
              DioUtils.printAPIResponse(e.response, Constants.filterApi,
                  responseRequired: true, headerRequired: false);
            }

            switch (e.error) {
              case DioExceptionType.connectionTimeout:
              case DioExceptionType.unknown:
              case DioExceptionType.sendTimeout:
                ReusableWidget.toastMsg(
                    'Request is taking more time to respond, please try again after sometime');
                break;
              case DioExceptionType.badResponse:
                if (e.response != null) return handler.resolve(e.response!);
                break;
              case DioExceptionType.receiveTimeout:
                break;
              case DioExceptionType.cancel:
                break;

            }
            if (e.error != null) {
              if (!(e.error is SocketException ||
                  e.error is HandshakeException)) {
                Utils.captureException(e, e.stackTrace);
              }
            }
            if (e.response != null) return handler.resolve(e.response!);

          },
        ),
      ]);
    } catch (exception, stackTrace) {
      Utils.captureException(exception, stackTrace);
    }
  }
}
