import 'package:e_com/data/model/product_model/product_model.dart';
import 'package:e_com/presentation/product_details/ProductDetails.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final ProductModel productModel;
  const ProductItem(this.productModel, {super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ProductDetails(
                      productModel: productModel,
                    )));
      },
      child: Card(
        elevation: 6,
        child: Column(
          children: [
            Container(
              color: Colors.white,
              height: MediaQuery.sizeOf(context).height * 0.19,
              width: MediaQuery.sizeOf(context).width * 0.5,
              child: Image.network(
                productModel.image!,
                height: MediaQuery.sizeOf(context).height * 0.19,
                width: MediaQuery.sizeOf(context).width * 0.25,
              ),
            ),
            Text(
              productModel.title!,
              style: TextStyle(overflow: TextOverflow.ellipsis),
            ),
            Text(productModel.price.toString())
          ],
        ),
      ),
    );
  }
}
