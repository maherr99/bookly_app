import 'package:bookly_app/core/api_services.dart';
import 'package:bookly_app/feature/home/data/repos/home_repo_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  locator.registerSingleton<ApiServices>(ApiServices(Dio()));
  locator.registerSingleton<HomeRepoImpl>(HomeRepoImpl(
    locator.get<ApiServices>(),
  ));
}
