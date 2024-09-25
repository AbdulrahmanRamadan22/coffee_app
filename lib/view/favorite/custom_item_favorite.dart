// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:coffee_app/data/product_model.dart';
import 'package:flutter/material.dart';

class CustomItemFavorite extends StatefulWidget {
  final ProductModel productModel;
  const CustomItemFavorite({super.key, required this.productModel});

  @override
  State<CustomItemFavorite> createState() => _CustomItemFavoriteState();
}

// Container(
//                                     height: 40,
//                                     width: 40,
//                                     decoration: BoxDecoration(
//                                       color: small
//                                           ? ColorApp.primaryColor
//                                           : const Color(0xffD9D9D9),
//                                       borderRadius: BorderRadius.circular(20),
//                                     ),
//                                     child: Center(
//                                       child: Text(
//                                         "S",
//                                         style: TextStyle(
//                                           fontSize: 22,
//                                           color: small
//                                               ? Colors.white
//                                               : const Color(0xff777777),
//                                         ),
//                                       ),
//                                     ),
//                                   ),

class _CustomItemFavoriteState extends State<CustomItemFavorite> {
  bool favorite = true;

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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Image.asset(
              widget.productModel.image,
              fit: BoxFit.fill,
              height: 90,
              width: 90,
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
                    width: 80,
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: favorite ? Colors.red : const Color(0xffD9D9D9),
                        borderRadius: BorderRadius.circular(25),
                      ),
                      child: Icon(
                        Icons.favorite,
                        color:
                            favorite ? Colors.white : const Color(0xff777777),
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
