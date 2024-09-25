import 'package:coffee_app/data/product_model.dart';
import 'package:flutter/material.dart';

import '../../product_details/product_details_screen.dart';

class SpecialProduct extends StatelessWidget {
  const SpecialProduct({super.key, required this.productModel});

  final List<ProductModel> productModel;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(
        height: 20,
      ),
      padding: EdgeInsets.zero,
      itemCount: productModel.length,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (context, index) => InkWell(
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
        child: Container(
          width: double.infinity,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff967259),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    productModel[index].image,
                    height: 130,
                    width: 130,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Specially mixed and\nbrewed whivh you\nmust try!",
                      style: TextStyle(
                        height: 1.6,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '\$${productModel[index].price}  ',
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          if (productModel[index].oldPrice != null)
                            TextSpan(
                              text: '\$${productModel[index].oldPrice}',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                color: Colors.grey[400],
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
