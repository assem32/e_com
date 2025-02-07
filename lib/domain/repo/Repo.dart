import 'package:dartz/dartz.dart';
import 'package:e_com/core/ErrorHandler.dart';

abstract class Repo {
  Future<Either<String,Map<String,dynamic>>> login({required String email, required String password});
}