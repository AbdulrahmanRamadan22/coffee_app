import 'package:flutter/material.dart';

class PoductNameAndDecriptionAndPrice extends StatelessWidget {
  final String name;
  final String description;
  final String price;

  const PoductNameAndDecriptionAndPrice({
    required this.name,
    required this.description,
    required this.price,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 15, left: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            name,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff444444),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(
            description,
            style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w400,
                color: Colors.grey[500]),
          ),
          const SizedBox(
            height: 10,
          ),
          RichText(
            text: TextSpan(
              children: [
                const TextSpan(
                  text: '\$',
                  style: TextStyle(
                    color: Color(0xff967259),
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                TextSpan(
                  text: price,
                  style: const TextStyle(
                    color: Color(0xff444444),
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
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
