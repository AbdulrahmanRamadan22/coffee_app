import 'package:coffee_app/view/home/widgets/poduct_name_and_decription_and_price.dart';
import 'package:flutter/material.dart';

import 'button_add_product_item.dart';
import 'custom_product_rate.dart';
import 'package:coffee_app/data/product_model.dart';

class CustomProductItem extends StatelessWidget {
  final ProductModel productModel;

  const CustomProductItem({super.key, required this.productModel});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight, // CbottomRight
      children: [
        Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.topRight, // Center of Top

                children: [
                  //image product
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage(
                              productModel.image,
                            ))),
                    height: 140,
                    width: double.infinity,
                  ),

                  //CustomRate widget
                  CustomProductRate(
                    ratting: productModel.ratting,
                  ),
                ],
              ),
              //PoductNameAndDecriptionAndPrice widget
              PoductNameAndDecriptionAndPrice(
                name: productModel.name,
                description: productModel.description,
                price: productModel.price,
              ),
            ],
          ),
        ),

        // ButtonAddProductItem
        const ButtonAddProductItem(),
      ],
    );
  }
}
