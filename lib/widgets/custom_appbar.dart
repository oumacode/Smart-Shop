import 'package:flutter/material.dart';
import 'package:tp_smartshop/pages/profile_page.dart';

class CustomAppbar extends StatelessWidget {
  final String text;
  const CustomAppbar({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.teal,
      title: Text(text, style: TextStyle(color: Colors.black)),
      actions: [Icon(Icons.shopping_cart_sharp)],
    );
  }
}
