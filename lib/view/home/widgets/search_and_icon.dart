import 'package:flutter/material.dart';

class SearchAndIcon extends StatelessWidget {
  const SearchAndIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Find your coffee..",
              prefixIcon: const Icon(
                Icons.search,
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Image.asset(
          "assets/images/icon_home2.png",
          height: 60,
          width: 60,
        )
      ],
    );
  }
}
