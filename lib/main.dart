import 'package:flutter/material.dart';
import 'package:veramasa_website/Screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}
 class MyApp extends StatelessWidget {
   const MyApp({Key? key}) : super(key: key);

   @override
   Widget build(BuildContext context) {
     return const MaterialApp(
       title: 'Veramasa',
       debugShowCheckedModeBanner: false,
       home: HomeScreen()
     );
   }
 }
