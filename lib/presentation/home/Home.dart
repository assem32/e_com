import 'package:e_com/presentation/home/manger/home_cubit.dart';
import 'package:e_com/presentation/home/manger/home_states.dart';
import 'package:e_com/presentation/home/widgets/product_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:
        BlocBuilder<ProductCubit, HomeProductStates>(builder: (context, state) {
      if (state is HomeProductSuccessState) {
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // number of items in each row
            mainAxisSpacing: 0, // spacing between rows
            crossAxisSpacing: 3.0, // spacing between columns
          ),
          shrinkWrap: true,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context, index) {
            return ProductItem(state.products[index]);
          },
          itemCount: state.products.length,
        );
      } else if (state is HomeProductErrorState) {
        return Text(state.error);
      } else {
        return CircularProgressIndicator();
      }
    }));
  }
}
