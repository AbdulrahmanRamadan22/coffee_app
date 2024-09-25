import 'package:coffee_app/constatnt/constant.dart';
import 'package:coffee_app/data/product_model.dart';
import 'package:coffee_app/view/product_details/widgets/app_bar_product_detailes.dart';
import 'package:coffee_app/view/product_details/widgets/card_product_detailes.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final ProductModel productModel;
  const ProductDetails({super.key, required this.productModel});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  bool small = true;

  bool medium = false;

  bool large = false;
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(13),
        child: Column(
             
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Image.asset(
                      widget.productModel.image,
                      width: double.infinity,
                      height: 320,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const AppBarProductDetailes(),
                  CardProductDetailes(
                    productModel: widget.productModel,
                    small: small,
                    large: large,
                    medium: medium,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      "Description",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff444444)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "A ${widget.productModel.name} is the perfect balance of espresso, steamed milk. This coffee is all about the structure.",
                      style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          height: 1.7,
                          color: Color(0xff444444)),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                "Size",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff444444)),
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      small = true;
                                      medium = false;
                                      large = false;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: small
                                          ? ColorApp.primaryColor
                                          : const Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "S",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: small
                                              ? Colors.white
                                              : const Color(0xff777777),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: InkWell(
                                    onTap: () {
                                      setState(() {
                                        small = false;
                                        medium = true;
                                        large = false;
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: BoxDecoration(
                                        color: medium
                                            ? ColorApp.primaryColor
                                            : const Color(0xffD9D9D9),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Text(
                                          "M",
                                          style: TextStyle(
                                            fontSize: 22,
                                            color: medium
                                                ? Colors.white
                                                : const Color(0xff777777),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      small = false;
                                      medium = false;
                                      large = true;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: large
                                          ? ColorApp.primaryColor
                                          : const Color(0xffD9D9D9),
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "L",
                                        style: TextStyle(
                                          fontSize: 22,
                                          color: large
                                              ? Colors.white
                                              : const Color(0xff777777),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: Text(
                                "Quantity",
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: Color(0xff444444)),
                              ),
                            ),
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      if (count >= 2) {
                                        count--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: ColorApp.primaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Icon(
                                      Icons.remove,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Text(
                                    "$count",
                                    style: const TextStyle(
                                        fontSize: 22, color: Colors.black),
                                  ),
                                ),
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      count++;
                                    });
                                  },
                                  child: Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: ColorApp.primaryColor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: const Icon(
                                      Icons.add,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Column(
                            children: [
                              const Text(
                                "Price",
                                style: TextStyle(
                                    fontSize: 14, color: Color(0xff777777)),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "\$",
                                    style: TextStyle(
                                        color: Color(0xff967259),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    small
                                        ? widget.productModel.price
                                        : medium
                                            ? widget.productModel.mediumPrice
                                            : widget.productModel.largePrice,
                                    style: const TextStyle(
                                        color: Color(0xff444444),
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            height: 60,
                            // width: double.infinity,
                            decoration: BoxDecoration(
                              color: ColorApp.primaryColor,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: const Center(
                              child: Text(
                                "Buy Now",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
