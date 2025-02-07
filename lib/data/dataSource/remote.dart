import 'package:e_com/core/ApiServices.dart';

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

}