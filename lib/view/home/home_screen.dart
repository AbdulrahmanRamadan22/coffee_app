import 'package:coffee_app/view/home/widgets/home_app_bar.dart';
import 'package:coffee_app/view/home/widgets/search_and_icon.dart';
import 'package:coffee_app/view/home/widgets/special_product.dart';
import 'package:flutter/material.dart';

import '../../data/data.dart';
import 'widgets/tab_bar_home_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  // final List<Widget> tabContents = const [
  //   GridViewItem(),
  //   // Text("Espresso is strong and bold."),
  //   Text("Latte is smooth and milky."),
  //   Text("Cappuccino is rich with foam."),
  //   Text("Red Eye is coffee with espresso."),
  //   Text("Black Eye is coffee with two shots."),
  //   Text("Americano is diluted espresso."),
  //   Text("Long Black is espresso with hot water."),
  //   Text("Macchiato has a shot of espresso."),
  //   Text("Double is a double shot of espresso."),
  // ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: Data.categories.length,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 60,
            ),
            const HomeAppBar(),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                "Find the best\nCoffee to your taste",
                style: TextStyle(
                    color: Color(0xff444444),
                    height: 1.5,
                    fontSize: 22,
                    fontWeight: FontWeight.w700),
              ),
            ),
            const SearchAndIcon(),
            const TabBarHomeView(),
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsets.zero,
                children: [
                  // TabBarconttantView
                  SizedBox(
                    height: 230,
                    child: TabBarView(
                      physics: const BouncingScrollPhysics(),
                      children: Data.tabContents,
                    ),
                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      "Special for you",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Color(0xff444444),
                      ),
                    ),
                  ),

                  SpecialProduct(
                    productModel: Data.specialProducts,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
