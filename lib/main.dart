import 'package:flutter/material.dart';
import 'package:tp_smartshop/pages/home_page.dart';

void main() {runApp(const SmartShop());}

class SmartShop extends StatelessWidget {
  
  const SmartShop({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Shop',
      home: HomePage(), 

    );
  }

}