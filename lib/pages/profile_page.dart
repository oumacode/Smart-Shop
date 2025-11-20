import 'package:flutter/material.dart';
import 'package:tp_smartshop/widgets/bottomNavigationBar.dart';
import 'package:tp_smartshop/widgets/custom_appbar.dart';

class Profile extends StatelessWidget {
const Profile({super.key});
@override
Widget build(BuildContext context){
  return Scaffold(
  appBar: PreferredSize(
    preferredSize: const Size.fromHeight(kToolbarHeight),
    child: CustomAppbar(text: "Mon profile"),
  ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      CircleAvatar(radius: 30,backgroundImage: AssetImage('assets/logo.png'),),
      Text("Oumayma Maili"),
      Text("Etudiante ENIAD"),
      Divider(),
      ListTile(
          leading: Icon(Icons.email, color: Colors.blue),
          title: Text("oumaymamaili@gmail.com"),
        ),
        ListTile(
          leading: Icon(Icons.phone, color: Colors.green),
          title: Text("066666663637"),
        ),
        ListTile(
          leading: Icon(Icons.location_on, color: Colors.red),
          title: Text("Oujda, Maroc"),
        ),    
    ],
    ),
    bottomNavigationBar : CustomButtomNavigationBar()
  );
}
}