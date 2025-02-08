
import 'package:e_com/core/ApiServices.dart';
import 'package:e_com/data/model/product_model/product_model.dart';

class RemoteData{
    final APIServices apiServices;

    RemoteData(this.apiServices);

    Future<Map<String,dynamic>> login({required String email, required String password}) async{
    var response = await apiServices.post(endpoint: 'auth/login',data:{
      'username':email,
      'password':password
    });
    return response;
  }

  Future<List<ProductModel>>fetchProducts()async{
    var response = await apiServices.get('products');
    List<ProductModel> list = convertToProductModelList(response); 
    return list;
  }


  List<ProductModel> convertToProductModelList(List<dynamic> jsonList) {
  return jsonList.map((json) => ProductModel.fromJson(json)).toList();
}
}