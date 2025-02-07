import 'package:dio/dio.dart';
import 'package:e_com/core/ApiServices.dart';
import 'package:e_com/data/dataSource/remote.dart';
import 'package:e_com/data/repoImp/RepoImp.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final RemoteData remoteData = RemoteData(APIServices(Dio())); // Initialize your RemoteData
  

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Column(
        children: [
          MaterialButton(onPressed: ()async{
            final Repoimp repo = Repoimp(remoteData);
            var resp =await repo.login(email: "mor_2314", password: "83r5^_");
            print(resp);

          },child: Text("preesss"),)
        ],
      ),
    );
  }
}