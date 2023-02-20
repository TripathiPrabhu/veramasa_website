import 'package:flutter/material.dart';


class HomePageHeader extends StatelessWidget {
  const HomePageHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool primaryColor = true;
    print(MediaQuery
        .of(context)
        .size
        .width);
    print(MediaQuery
        .of(context)
        .size
        .height);
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 100,left: 100),
          child: Container(
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width/2,
           // color: Colors.green,
            child: Center(
                child: Column(
                  children:  [
                    const Text('Veramasa\nCreate, Innovate & Transform',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 30,
                        color: Color(0XFFA700FA),

                      ),),
                    const Text('''\n\nWe are a team of \nBusiness Analysts || Designers || Developers || and Quality Analysts \n\nwell versed with different technologies, 
\ntools and best practices Website Designing Company,''',
                      textAlign: TextAlign.center,
                      style:
                      TextStyle(fontWeight: FontWeight.w800,
                      fontSize: 20,
                        color:  Color(0XFF00204C),
                      ),),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            onPressed: (){},
                          child: Text('Hire Us',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                              style: ElevatedButton.styleFrom(


                              ),
                          ),
                          ElevatedButton(
                            onPressed: (){},
                              style: ElevatedButton.styleFrom(


                              ),
                          child: Text('Call Us',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          ),
                        ],
                      ),
                    )
                  ],
                )),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 100),
          child: Container(
           // color: Colors.red,
            height: MediaQuery.of(context).size.height/2,
            width: MediaQuery.of(context).size.width/2.5,
            child: Image.asset('images/img.png',),
          ),
        ),
      ],
    );
  }
}