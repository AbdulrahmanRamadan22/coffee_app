import 'package:flutter/material.dart';

import '../../../constatnt/constant.dart';

class ButtonAddProductItem extends StatelessWidget {
  const ButtonAddProductItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      right: 4,
      bottom: 4,
      child: Container(
          height: 53,
          width: 52,
          decoration: BoxDecoration(
            color: ColorApp.primaryColor,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomRight: Radius.circular(23),
            ),
          ),
          child: const Icon(
            Icons.add,
            size: 26,
            color: Colors.white,
          )),
    );
  }
}
