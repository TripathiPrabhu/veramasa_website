import 'package:flutter/material.dart';

import '../widgets/home_page_header.dart';
import '../widgets/website_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
    Scaffold(
      backgroundColor: Color(0xffeaf2ff),
      body: SafeArea(
        child: ListView(

              children: [
                WebsiteHeader(),
                Container(height: 3,width: double.infinity,
                    color: Color(0xff9A00E7)),

                HomePageHeader()
              ],

        ),
      ),
    ),
    );
  }
}
