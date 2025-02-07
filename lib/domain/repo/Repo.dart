import 'package:dartz/dartz.dart';
import 'package:e_com/core/ErrorHandler.dart';
import 'package:e_com/data/model/product_model/product_model.dart';

abstract class Repo {
  Future<Either<String, Map<String, dynamic>>> login(
      {required String email, required String password});

  Future <Either<String, List<dynamic> >> fetchProduct();
}

