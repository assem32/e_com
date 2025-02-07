import 'package:dartz/dartz.dart';

abstract class Usecase<Type> {
  Future<Either<String,Type>> call();
}