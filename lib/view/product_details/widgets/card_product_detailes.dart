import 'package:coffee_app/data/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constatnt/constant.dart';

class CardProductDetailes extends StatefulWidget {
  final ProductModel productModel;
  final bool small;

  final bool medium;

  final bool large;
  const CardProductDetailes(
      {super.key,
      required this.productModel,
      required this.large,
      required this.medium,
      required this.small});

  @override
  State<CardProductDetailes> createState() => _CardProductDetailesState();
}

class _CardProductDetailesState extends State<CardProductDetailes> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
          gradient: LinearGradient(colors: [
            Colors.black,
            ColorApp.primaryColor,
          ]),
        ),
        width: double.infinity,
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.productModel.name,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    widget.productModel.description,
                    style: TextStyle(
                        color: Colors.white.withOpacity(0.8),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.star,
                        size: 22,
                        color: Color(0xffD17842),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        widget.productModel.ratting,
                        style: const TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Column(
                        children: const [
                          Icon(
                            Icons.coffee,
                            color: Color(0xffDDDDDD),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Coffee",
                            style: TextStyle(
                                color: Color(0xffDDDDDD),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      Column(
                        children: const [
                          Icon(
                            Icons.water_drop_rounded,
                            color: Color(0xffDDDDDD),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "Chocolate",
                            style: TextStyle(
                                color: Color(0xffDDDDDD),
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    widget.small
                        ? "Small Roasted"
                        : widget.medium
                            ? "Medium Roasted"
                            : "Large Roasted",
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
