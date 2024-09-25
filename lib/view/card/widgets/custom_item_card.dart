// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_app/data/product_model.dart';
import 'package:flutter/material.dart';

import '../../../constatnt/constant.dart';

class CustomItemCard extends StatefulWidget {
  const CustomItemCard({
    super.key,
    required this.productModel,
  });
  final ProductModel productModel;

  @override
  State<CustomItemCard> createState() => _CustomItemCardState();
}

class _CustomItemCardState extends State<CustomItemCard> {
  int count = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 9,
            offset: const Offset(3, 2), // changes position of shadow
          ),
        ],
      ),
      height: 120,
      width: double.infinity,
      child: Row(
        children: [
          const Icon(
            Icons.check_circle,
            color: Color(0xff967259),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              widget.productModel.image,
              fit: BoxFit.fill,
              height: 80,
              width: 80,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${widget.productModel.name} ${widget.productModel.description}",
                style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "US \$${widget.productModel.price}",
                style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.black),
              ),
              Row(
                children: [
                  const Text(
                    r'Delivery fee US $3',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: Color(0xffF37E33),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        if (count >= 2) {
                          count--;
                        }
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.remove,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "$count",
                      style: const TextStyle(fontSize: 22, color: Colors.black),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        count++;
                      });
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      decoration: BoxDecoration(
                        color: ColorApp.primaryColor,
                        borderRadius: BorderRadius.circular(10),
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
    );
  }
}
