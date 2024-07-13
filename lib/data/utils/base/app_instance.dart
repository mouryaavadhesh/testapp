import 'package:testapp/domain/network/dio_client.dart';

class AppInstance {
  static final AppInstance _instance = AppInstance._internal();

  final DioClient _dioClient = DioClient.init();

  factory AppInstance() {
    return _instance;
  }

  AppInstance._internal();

  DioClient get getApiInstance => _dioClient;
}
