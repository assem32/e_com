import 'package:dartz/dartz.dart';
import 'package:e_com/core/ErrorHandler.dart';
import 'package:e_com/data/dataSource/remote.dart';
import 'package:e_com/data/model/product_model/product_model.dart';
import 'package:e_com/domain/repo/Repo.dart';

class Repoimp implements Repo {
  final RemoteData remoteData;

  Repoimp(this.remoteData);

  @override
  Future<Either<String, Map<String, dynamic>>> login(
      {required String email, required String password}) async {
    try {
      var response = await remoteData.login(email: 'mor_2314',password: '83r5^_');
      return right(response);
    } catch (e) {
      return left(ErrorHandler.getErrorMessage(e));
    }
  }

  @override
  Future<Either<String, List<ProductModel>>> fetchProduct()async {
    try{
      var response = await remoteData.fetchProducts();
      return right(response);
    }
    catch(e){
      return left(ErrorHandler.getErrorMessage(e));
    }
  }
}
