import 'package:flutter/material.dart';
import 'package:tp_smartshop/widgets/bottomNavigationBar.dart';
//ici en fait appel au child
import 'package:tp_smartshop/widgets/product_card.dart';
import 'package:tp_smartshop/widgets/custom_appbar.dart';
// import de la page profil — modifie le chemin si ta page s'appelle différemment
import 'package:tp_smartshop/pages/profile_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppbar(text: "SmartShop"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          //en transmet les données ici
          children: [
            ProductCard(
              image: "products/phone.png",
              titre: "SmartPhone",
              price: 2999,
            ),
            ProductCard(
              image: "products/laptop.png",
              titre: "Laptop",
              price: 5000,
            ),
            ProductCard(
              image: "products/watch.png",
              titre: "Smart Watch",
              price: 999,
            ),
          ],
        ),
      ),
      bottomNavigationBar : CustomButtomNavigationBar()
    );
  }
}
