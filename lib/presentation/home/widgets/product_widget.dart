import 'package:e_com/data/model/product_model/product_model.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  var productModel;
  ProductItem(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image.network(productModel.image!,height: 40,width: 50,),
          Text(productModel.title!),
          Text(productModel.price.toString())
        ],
      ),
    );
  }
}