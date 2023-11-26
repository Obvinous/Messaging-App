import 'package:flutter/material.dart';
import 'package:nav_bar/view/homepage.dart';

void main(){
  runApp(Messanger());
}
class Messanger extends StatelessWidget {
  const Messanger({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: ThemeData(
      //   drawerTheme: DrawerThemeData(
      //     scrimColor: Colors.transparent
      //   )
      // ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}