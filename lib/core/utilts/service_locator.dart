import 'package:booklyy/core/utilts/api_service.dart';
import 'package:booklyy/features/home/data/repos/homerepo_implem.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setup() {
  getIt.registerSingleton<ApiService>(ApiService(Dio()));
  getIt.registerSingleton<Homereppo>(Homereppo(getIt.get<ApiService>()));
}
