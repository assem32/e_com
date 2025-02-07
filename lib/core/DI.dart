

import 'package:dio/dio.dart';
import 'package:e_com/core/ApiServices.dart';
import 'package:get_it/get_it.dart';

final loctor = GetIt.instance;

void setupLocator(){
  loctor.registerSingleton<APIServices>(APIServices(Dio()));
}