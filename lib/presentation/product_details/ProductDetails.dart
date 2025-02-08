import 'package:e_com/data/model/product_model/product_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatelessWidget {
  final ProductModel productModel;
  const ProductDetails({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          // Scrollable Column
          SingleChildScrollView(
            child: Column(
              children: [
                // Product Image
                Image.network(productModel.image!),
                // Product Title and Price
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(productModel.title!),
                                Text(
                                  '\$${productModel.price.toString()}',
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.star, color: Colors.amber),
                                Text(productModel.rating!.rate.toString()),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Product Description
                Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(productModel.description.toString()),
                  ),
                ),
                // Add extra space at the bottom to avoid overlapping with the fixed button
                SizedBox(height: MediaQuery.sizeOf(context).height * 0.12),
              ],
            ),
          ),
          // Fixed Bottom Container (Add to Cart Button)
          Container(
            color: Colors.white,
            height: MediaQuery.sizeOf(context).height * 0.12,
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(CupertinoIcons.heart),
                ),
                Expanded(
                  child: MaterialButton(
                    onPressed: () {},
                    color: Colors.blue,
                    textColor: Colors.white,
                    child: Text('Add to cart'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}