import 'package:coffee_app/data/product_model.dart';
import 'package:flutter/cupertino.dart';

import '../view/home/widgets/products_grid_view_items.dart';

class Data {
  //list espressoProducts
  static List<ProductModel> espressoProducts = [
    ProductModel(
      name: "Espresso",
      description: 'with Oat Milk',
      image: 'assets/images/espresso2.png',
      price: "4.20",
      ratting: "4.2",
      mediumPrice: "5.40",
      largePrice: "7.20",
    ),
    ProductModel(
      name: "Espresso",
      description: 'with Chocolate',
      image: 'assets/images/espresso1.png',
      price: "5.10",
      ratting: "4.5",
      mediumPrice: "6.20",
      largePrice: "8.0",
    ),
  ];
  //list latteProducts
  static List<ProductModel> latteProducts = [
    ProductModel(
      name: "Latte",
      description: 'with White Milk',
      image: 'assets/images/latte1.png',
      price: "6.2",
      ratting: "4.2",
      mediumPrice: "7.40",
      largePrice: "9.0",
    ),
    ProductModel(
      name: "Latte",
      description: 'with Chocolate',
      image: 'assets/images/latte2.png',
      price: "5.10",
      ratting: "4.5",
      mediumPrice: "6.40",
      largePrice: "7.5",
    ),
  ];
  //list cappuccinoProducts

  static List<ProductModel> cappuccinoProducts = [
    ProductModel(
      name: "Cappuccino",
      description: 'with White Milk',
      image: 'assets/images/cappuccino1.png',
      price: "6.2",
      ratting: "4.8",
      mediumPrice: "8",
      largePrice: "9.20",
    ),
    ProductModel(
      name: "Cappuccino",
      description: 'with Chocolate',
      image: 'assets/images/cappuccino2.png',
      price: "5.10",
      ratting: "4.7",
      mediumPrice: "6.20",
      largePrice: "7.5",
    ),
  ];

//list americanoProducts
  static List<ProductModel> americanoProducts = [
    ProductModel(
      name: "Americano",
      description: 'with White Milk',
      image: 'assets/images/americano1.jpeg',
      price: "7.2",
      ratting: "3.2",
      mediumPrice: "9",
      largePrice: "10.5",
    ),
    ProductModel(
      name: "Americano",
      description: 'with Chocolate',
      image: 'assets/images/americano2.jpg',
      price: "6.10",
      ratting: "4.5",
      mediumPrice: "7",
      largePrice: "8.5",
    ),
  ];
  //list macchiatoProducts
  static List<ProductModel> macchiatoProducts = [
    ProductModel(
      name: "Macchiato",
      description: 'with White Milk',
      image: 'assets/images/macchiato1.png',
      price: "8.2",
      ratting: "4.2",
      mediumPrice: "10.5",
      largePrice: "12.5",
    ),
    ProductModel(
      name: "Macchiato",
      description: 'with Chocolate',
      image: 'assets/images/macchiato2.png',
      price: "6.10",
      ratting: "4.5",
      mediumPrice: "7.5",
      largePrice: "9.0",
    ),
  ];
  //list doubleProducts
  static List<ProductModel> doubleProducts = [
    ProductModel(
      name: "Double",
      description: 'with White Milk',
      image: 'assets/images/double1.jpeg',
      price: "12.2",
      ratting: "4.9",
      mediumPrice: "14.3",
      largePrice: "16.0",
    ),
    ProductModel(
      name: "Double",
      description: 'with Chocolate',
      image: 'assets/images/double2.jpeg',
      price: "10.10",
      ratting: "4.5",
      mediumPrice: "13.20",
      largePrice: "15.0",
    ),
  ];

//list specialProducts
  static List<ProductModel> specialProducts = [
    ProductModel(
      name: "Double",
      description: 'with White Milk',
      image: 'assets/images/double1.jpeg',
      price: "12.2",
      oldPrice: "20.2",
      ratting: "4.9",
      mediumPrice: "13.5",
      largePrice: "15.0",
    ),
    ProductModel(
      name: "Latte",
      description: 'with Chocolate',
      image: 'assets/images/latte2.png',
      price: "5.10",
      oldPrice: "8.20",
      ratting: "4.5",
      mediumPrice: "6.5",
      largePrice: "8.0",
    ),
    ProductModel(
      name: "Espresso",
      description: 'with Oat Milk',
      image: 'assets/images/espresso2.png',
      price: "4.20",
      oldPrice: "7.20",
      ratting: "4.2",
      mediumPrice: "5.20",
      largePrice: "6.40",
    ),
    ProductModel(
      name: "Espresso",
      description: 'with Chocolate',
      image: 'assets/images/espresso1.png',
      price: "5.10",
      oldPrice: "9.20",
      ratting: "4.5",
      mediumPrice: "6.0",
      largePrice: "8.0",
    ),
    ProductModel(
      name: "Macchiato",
      description: 'with Chocolate',
      image: 'assets/images/macchiato2.png',
      price: "6.10",
      oldPrice: " 9.0",
      ratting: "4.5",
      mediumPrice: "7.50",
      largePrice: "9.0",
    ),
  ];

// list cartProducts
  static List<ProductModel> cartProducts = [
    ProductModel(
      name: "Espresso",
      description: 'with Oat Milk',
      image: 'assets/images/espresso2.png',
      price: "4.20",
      ratting: "4.2",
      mediumPrice: "5.40",
      largePrice: "7.20",
    ),
    ProductModel(
      name: "Espresso",
      description: 'with Chocolate',
      image: 'assets/images/espresso1.png',
      price: "5.10",
      ratting: "4.5",
      mediumPrice: "6.20",
      largePrice: "8.0",
    ),
    ProductModel(
      name: "Macchiato",
      description: 'with Chocolate',
      image: 'assets/images/macchiato2.png',
      price: "6.10",
      oldPrice: " 9.0",
      ratting: "4.5",
      mediumPrice: "7.50",
      largePrice: "9.0",
    ),
  ];

  //list favoriteProducts

  static List<ProductModel> favoriteProducts = [
    ProductModel(
      name: "Latte",
      description: 'with Chocolate',
      image: 'assets/images/latte2.png',
      price: "5.10",
      oldPrice: "8.20",
      ratting: "4.5",
      mediumPrice: "6.5",
      largePrice: "8.0",
    ),
    ProductModel(
      name: "Espresso",
      description: 'with Chocolate',
      image: 'assets/images/espresso1.png',
      price: "5.10",
      oldPrice: "9.20",
      ratting: "4.5",
      mediumPrice: "6.0",
      largePrice: "8.0",
    ),
    ProductModel(
      name: "Macchiato",
      description: 'with Chocolate',
      image: 'assets/images/macchiato2.png',
      price: "6.10",
      oldPrice: " 9.0",
      ratting: "4.5",
      mediumPrice: "7.50",
      largePrice: "9.0",
    ),
  ];

  // Example content for each tab
  static List<Widget> tabContents = [
    ProductsGridViewItems(
      productModel: espressoProducts,
    ),
    ProductsGridViewItems(
      productModel: latteProducts,
    ),
    ProductsGridViewItems(
      productModel: cappuccinoProducts,
    ),
    ProductsGridViewItems(
      productModel: americanoProducts,
    ),
    ProductsGridViewItems(
      productModel: macchiatoProducts,
    ),
    ProductsGridViewItems(
      productModel: doubleProducts,
    ),
  ];

  static const List<String> categories = [
    "Espresso",
    "Latte",
    "Cappuccino",
    "Americano",
    "Macchiato",
    "Double",
  ];
}
