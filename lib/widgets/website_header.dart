import 'package:flutter/material.dart';

import '../helpers/my_drop_down_button.dart';
import '../helpers/text_button.dart';


class WebsiteHeader extends StatelessWidget {
  const WebsiteHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 50),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [

          //logo goes here..
          Container(
            height: 70.0,
            width: 215.0,
            decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: const Color(0xFFffffff),
              boxShadow: const [
                BoxShadow(
                  color: Color(0X15A700FA),
                  blurRadius: 10.0, // soften the shadow
                  spreadRadius: 5.0, //extend the shadow
                  offset: Offset(
                    2.0, // Move to right 5  horizontally
                    2.0, // Move to bottom 5 Vertically
                  ),
                )
              ],
            ),
            child: Center(
                child: Padding(

                  padding: const EdgeInsets.only(left: 15,right: 20, top: 0,bottom: 10),
                  child: Image.asset('images/logo.png',fit: BoxFit.fill,),
                )),
          ),
          Row(
            children: [
              MyTextButton(onPressed: (){},
                  ButtonText: 'Home', fontsize:20,),
              SizedBox(width: 15,),
              MyTextButton(onPressed: (){},
                ButtonText: 'Client & Projects', fontsize:20,),
              SizedBox(width: 15,),
              MyDropDownButton(
                ButtonName: 'Company',
                onPrees: () {  },
                MenuButton1: 'About Us',
                onPrees1: () {  },
                MenuButton2: 'Vision & Core Values',
                onPrees2: () {  },
                MenuButton3: 'Testimonials',
                onPrees3: () {  },
                MenuButton4: 'FAQs',
                onPrees4: () {  },
                MenuButton5: 'Career',
                onPrees5: () {  },

              ),
              SizedBox(width: 15,),
              MyDropDownButton(
                ButtonName: 'Services',
                onPrees: () {  },
                MenuButton1: 'E-Comm. Web Devlopment',
                onPrees1: () {  },
                MenuButton2: 'CMS Web Development',
                onPrees2: () {  },
                MenuButton3: 'Enterprise Mobility',
                onPrees3: () {  },
                MenuButton4: 'Support & Mentainence',
                onPrees4: () {  },
                MenuButton5: 'Hire Dedicated Developer',
                onPrees5: () {  },

              ),
              SizedBox(width: 15,),
              MyDropDownButton(
                ButtonName: 'Technology',
                onPrees: () {  },
                MenuButton1: 'PHP Web Development',
                onPrees1: () {  },
                MenuButton2: 'React JS. Web Development',
                onPrees2: () {  },
                MenuButton3: 'React Native App Development',
                onPrees3: () {  },
                MenuButton4: 'Flutter App Development',
                onPrees4: () {  },
                MenuButton5: '',
                onPrees5: () {  },

              ),
              SizedBox(width: 15,),
              MyTextButton(onPressed: (){},
                ButtonText: 'Contact Us', fontsize:20,),
              SizedBox(height: 100,width: 100,),


            ],
          )
        ],),
    );
  }
}
