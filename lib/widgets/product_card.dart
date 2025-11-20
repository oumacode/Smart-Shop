import 'package:flutter/material.dart';
import 'package:tp_smartshop/pages/product_page.dart';

class ProductCard extends StatelessWidget {
//ici on declare nos variables
  final String image, titre;
  final double price;
//les instancie dans le constructeur 
  const ProductCard({
    super.key,
    required this.image,
    required this.titre,
    required this.price,
  });
  @override
  Widget build(BuildContext context) {
  //ici we rteurn our component
    return Card(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(image, height: 80),
          const SizedBox(height: 10),
          Text(titre),
          Text('$price DH'),
          const SizedBox(height: 5),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Details()),
              );
            },
            child: const Text("Details"),
          ),
        ],
      ),
    );
  }
}
