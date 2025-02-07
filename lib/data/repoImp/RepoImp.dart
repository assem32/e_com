import 'dart:math';

import 'package:dartz/dartz.dart';
import 'package:e_com/core/ErrorHandler.dart';
import 'package:e_com/data/dataSource/remote.dart';
import 'package:e_com/domain/repo/Repo.dart';

class Repoimp implements Repo{

  final RemoteData remoteData;

  Repoimp(this.remoteData);

  @override
  Future<Either<String, Map<String, dynamic>>> login({required String email, required String password}) async {

    try{
        var response =await remoteData.apiServices.post(endpoint: "auth/login", data: {
          "username":email,
          "password":password
        });
        return right(response);
    }
    catch(e){
        return left(ErrorHandler.getErrorMessage(e));
    }
    // TODO: implement login
     
  }
}