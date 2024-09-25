import 'package:coffee_app/data/product_model.dart';
import 'package:coffee_app/view/product_details/product_details_screen.dart';
import 'package:flutter/material.dart';

import 'custom_product_item.dart';

class ProductsGridViewItems extends StatelessWidget {
  final List<ProductModel> productModel;
  const ProductsGridViewItems({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 20.0,
          childAspectRatio: 1 / 1.4),
      itemCount: 2,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductDetails(
                  productModel: productModel[index],
                ),
              ),
            );
          },
          child: CustomProductItem(
            productModel: productModel[index],
          ),
        );
      },
    );
  }
}
