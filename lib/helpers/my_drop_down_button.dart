import 'package:flutter/material.dart';
import 'package:veramasa_website/helpers/text_button.dart';
import 'package:window_style_dropdown_menu/window_style_dropdown_menu.dart';

class MyDropDownButton extends StatelessWidget {
  String? ButtonName;
  String ? MenuButton1;
  String ? MenuButton2;
  String ? MenuButton3;
  String ? MenuButton4;
  String ? MenuButton5;
  String ? MenuButton6;
  String ? MenuButton7;
  final VoidCallback onPrees;
  final VoidCallback onPrees1;
  final VoidCallback onPrees2;
  final VoidCallback onPrees3;
  final VoidCallback onPrees4;
  final VoidCallback onPrees5;


  MyDropDownButton({
    required this.ButtonName,
    required this.onPrees,
    required this.onPrees1,
    required this.onPrees2,
    required this.onPrees3,
    required this.onPrees4,
    required this.onPrees5,

    this.MenuButton1,
    this.MenuButton2,
    this.MenuButton3,
    this.MenuButton4,
    this.MenuButton5,
    this.MenuButton6,
    this.MenuButton7,


  });

  @override
  Widget build(BuildContext context) {

    return InkWell(
      child: WindowStyleDropdownMenu(
        dropdownBackgroundColor:Color(0xf5eaf2fA) ,
        buttonTitleStyle: TextStyle(color: Color(0XFF00204C), fontSize: 20, fontWeight: FontWeight.w700),
        dropdownWidth: MediaQuery.of(context).size.width/6.8,
        buttonTitle: ButtonName.toString(),
        dropdownItems: [
          ListTile(
              mouseCursor: SystemMouseCursors.click,
              leading: MyTextButton(onPressed: onPrees1,
                ButtonText: MenuButton1, fontsize: 15,),),
          ListTile(
            mouseCursor: SystemMouseCursors.click,
            leading: MyTextButton(onPressed: onPrees2,
              ButtonText: MenuButton2, fontsize: 15,),),
          ListTile(
            mouseCursor: SystemMouseCursors.click,
            leading: MyTextButton(
              onPressed: onPrees3,
              ButtonText: MenuButton3, fontsize: 15,),),
          ListTile(
            mouseCursor: SystemMouseCursors.click,
            leading: MyTextButton(onPressed: onPrees4,
              ButtonText: MenuButton4, fontsize: 15,),),
          ListTile(
            mouseCursor: SystemMouseCursors.click,
            leading: MyTextButton(onPressed: onPrees5,
              ButtonText: MenuButton5, fontsize: 15,),),

        ],
      ),
    );
  }
}













































//
// class FoldUnfoldButton extends StatefulWidget {
//   const FoldUnfoldButton({Key? key}) : super(key: key);
//
//   @override
//   State<FoldUnfoldButton> createState() => _FoldUnfoldButtonState();
// }
//
// class _FoldUnfoldButtonState extends State<FoldUnfoldButton> {
//   @override
//   Widget build(BuildContext context) {
//     return  Center(
//         child: DropdownButtonHideUnderline(
//           child: DropdownButton2(
//             customButton: Text('Company', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),),
//             customItemsHeights: [
//               ...List<double>.filled(MenuItems.firstItems.length, 48),
//               8,
//               ...List<double>.filled(MenuItems.secondItems.length, 48),
//             ],
//             items: [
//               ...MenuItems.firstItems.map(
//                     (item) =>
//                     DropdownMenuItem<MenuItem>(
//                       value: item,
//                       child: MenuItems.buildItem(item),
//                     ),
//               ),
//               const DropdownMenuItem<Divider>(enabled: false, child: Divider()),
//               ...MenuItems.secondItems.map(
//                     (item) =>
//                     DropdownMenuItem<MenuItem>(
//                       value: item,
//                       child: MenuItems.buildItem(item),
//                     ),
//               ),
//             ],
//             onChanged: (value) {
//               MenuItems.onChanged(context, value as MenuItem);
//             },
//             itemHeight: 48,
//             itemPadding: const EdgeInsets.only(left: 16, right: 16),
//             dropdownWidth: 180,
//             dropdownPadding: const EdgeInsets.symmetric(vertical: 10),
//             dropdownDecoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(4),
//              color: Color(0xffeaf2ff),
//             ),
//             dropdownElevation: 8,
//             offset: const Offset(0, 8),
//           ),
//         ),
//     );
//   }
// }
//
// class MenuItem {
//   final String text;
//   final IconData icon;
//
//   const MenuItem({
//     required this.text,
//     required this.icon,
//   });
// }
//
// class MenuItems {
//   static const List<MenuItem> firstItems = [home, share, settings];
//   static const List<MenuItem> secondItems = [logout, career];
//
//   static const home = MenuItem(text: 'About Us', icon: Icons.info_outlined);
//   static const share = MenuItem(text: 'Vision & \nCore Values', icon: Icons.share);
//   static const settings = MenuItem(text: 'Testimonials', icon: Icons.settings);
//   static const logout = MenuItem(text: 'FAQs', icon: Icons.logout);
//   static const career = MenuItem(text: 'Career', icon: Icons.logout);
//
//   static Widget buildItem(MenuItem item) {
//     return Row(
//       children: [
//         Icon(
//             item.icon,
//             color: Color(0XFFA700FA),
//             size: 18
//         ),
//         const SizedBox(
//           width: 10,
//         ),
//         Text(
//           item.text,
//           style: TextStyle(color:Color(0XFF00204C), fontSize: 20, fontWeight: FontWeight.w700),
//         ),
//       ],
//     );
//   }
//
//   static onChanged(BuildContext context, MenuItem item) {
//     switch (item) {
//       case MenuItems.home:
//       //Do something
//         break;
//       case MenuItems.settings:
//       //Do something
//         break;
//       case MenuItems.share:
//       //Do something
//         break;
//       case MenuItems.logout:
//       //Do something
//         break;
//     }
//   }
// }