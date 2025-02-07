import 'package:dio/dio.dart';
import 'package:e_com/core/ApiServices.dart';
import 'package:e_com/core/DI.dart';
import 'package:e_com/data/dataSource/remote.dart';
import 'package:e_com/data/repoImp/RepoImp.dart';
import 'package:e_com/presentation/home/manger/home_cubit.dart';
import 'package:e_com/presentation/home/manger/home_states.dart';
import 'package:e_com/presentation/home/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        BlocBuilder<ProductCubit, HomeProductStates>(builder: (context, state) {
      if (state is HomeProductSuccessState) {
        return SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context,index){
                return ProductItem(state.products[index]);
              },itemCount: state.products.length,)
            ],
          ),
        );
      } else {
        return CircularProgressIndicator();
      }
    }));
  }
}
