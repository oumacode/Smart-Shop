import 'package:flutter/material.dart';
import 'package:tp_smartshop/widgets/ProductCard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title : Text("SmartShop")),
      body: GridView.count(
          padding: const EdgeInsets.all(8.0),
          crossAxisCount: 2,

          children: [
            ProductCard(
              imagePath: "products/phone.png",
              name: "SmartPhone",
              price: "999",
            ),
            ProductCard(
              imagePath: "products/laptop.png",
              name: "Laptop",
              price: "5000",
            ),
            ProductCard(
              imagePath: "products/watch.png",
              name: "Smart Watch",
              price: "999",
            ),
          ],
      ),
    );
  }
}
