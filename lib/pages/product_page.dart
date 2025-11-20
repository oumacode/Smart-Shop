import 'package:flutter/material.dart';
import 'package:tp_smartshop/widgets/bottomNavigationBar.dart';
import 'package:tp_smartshop/widgets/custom_appbar.dart';

class Details extends StatefulWidget {
  const Details({super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool added = false;

  void _toggleCart() {
    setState(() {
      added = !added;
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(added ? "Produit ajouté au panier !" : "Produit retiré du panier"),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(text: "Détail du produit"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("products/phone.png", height: 180),
            const Text("128 Go, 8 RAM, Batterie 5000 mAh"),
            const Icon(Icons.star, color: Colors.amber),
            ElevatedButton(
              onPressed: _toggleCart,
              child: Text(added ? "Retirer du panier" : "Ajouter au panier"),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtomNavigationBar(),
    );
  }
}