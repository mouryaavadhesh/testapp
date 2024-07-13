import 'dart:convert';

import 'package:testapp/data/entities/item_model.dart';
import 'package:testapp/data/utils/base/app_instance.dart';
import 'package:testapp/data/utils/base/repo_response.dart';
import 'package:testapp/data/utils/enums/data.dart';
import 'package:testapp/data/utils/utils.dart';
import 'package:testapp/domain/network/api_movie.dart';

class MovieRepo {
  Future<RepoResponse<List<MovieResponse>>> getMovieData() async {
    dynamic response = await AppInstance()
        .getApiInstance
        .getMovieData();
    try {
      if (response != null) {
        final List<dynamic> jsonList = response;
        return SuccessResponse(jsonList.map((json) =>MovieResponse.fromJson(json)).toList());
      } else {
        return FailedResponse(DataErrorState.noData);
      }
    } catch (error, stackTrace) {
      Utils.captureException(error, stackTrace);
      return FailedResponse(DataErrorState.exception);
    }
  }
}
