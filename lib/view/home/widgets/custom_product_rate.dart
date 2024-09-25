import 'package:flutter/material.dart';

class CustomProductRate extends StatelessWidget {
  final String ratting;
  const CustomProductRate({Key? key, required this.ratting}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        height: 32,
        width: 80,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("assets/images/rate.png"),
          ),
        ),
        child: Row(
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
              

              ratting,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600),
            )
          ],
        ),
      ),
    );
  }
}
