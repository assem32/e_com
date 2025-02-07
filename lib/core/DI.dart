import 'package:dio/dio.dart';
import 'package:e_com/core/ApiServices.dart';
import 'package:e_com/data/dataSource/remote.dart';
import 'package:e_com/data/repoImp/RepoImp.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setupLocator() {
  locator.registerSingleton<APIServices>(APIServices(Dio()));

  locator.registerSingleton<Repoimp>(Repoimp(RemoteData(APIServices(Dio()))));
}
