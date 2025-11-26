import 'package:flutter/material.dart';
import 'package:tp_smartshop/Cart.dart';
class CartPage extends StatelessWidget {

  const CartPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Mon␣Panier")),
      body: Center(
        child: Text(
          "Articles␣dans␣le␣panier␣:␣${Cart.count}",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
