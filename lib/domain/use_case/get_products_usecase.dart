import 'package:dartz/dartz.dart';
import 'package:e_com/core/usecase.dart';
import 'package:e_com/data/model/product_model/product_model.dart';
import 'package:e_com/domain/repo/Repo.dart';

class FetchProductsUseCase extends Usecase<List<dynamic>>{

  final Repo repo;
  FetchProductsUseCase(this.repo);

  @override
  Future<Either<String, List<dynamic>>> call()async {
    return await repo.fetchProduct();
  }
  

}