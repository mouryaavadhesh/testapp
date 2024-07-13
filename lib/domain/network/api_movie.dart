import 'package:testapp/domain/network/dio_client.dart';
import 'package:testapp/domain/network/dio_utils.dart';

extension MovieApi on DioClient {
  Future<dynamic> getMovieData() async {
    var response = await dio.get("");
    switch (response.statusCode) {
      case 200:
        return response.data;
      default:
        DioUtils.handleErrorStatusCode(response,
            isNavigationToMaintenanceEnabled: true);
    }
    return null;
  }
}
