import 'package:flutter/material.dart';

import '../../../data/data.dart';

class TabBarHomeView extends StatelessWidget {
  const TabBarHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: TabBar(
            isScrollable: true,
            indicatorColor: const Color(0xff967259),
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle:
                const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
            indicatorWeight: 5,
            labelColor: const Color(0xff967259),
            unselectedLabelColor: const Color(0xff444444),
            tabs: Data.categories.map((element) => Tab(text: element)).toList(),
          ),
        ),
      ],
    );
  }
}
