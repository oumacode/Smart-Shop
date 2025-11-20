import 'package:flutter/material.dart';
import 'package:tp_smartshop/widgets/bottomNavigationBar.dart';
import 'package:tp_smartshop/widgets/custom_appbar.dart';

class Details extends StatelessWidget,State {
  const Details({super.key});
  bool added = false;

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
            Text("128 Go, 8 RAM, Batterie 5000 mAh"),
            Icon(Icons.star, color: Colors.amber),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  added = !added;
                });
              },
              label: Text(added ? "Retirer du panier" : "Ajouter au panier")
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomButtomNavigationBar(),
    );
  }
}
