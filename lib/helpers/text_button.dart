import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String? ButtonText;
  final double? fontsize;

  MyTextButton({required this.onPressed, required this.ButtonText, required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
            (Set<MaterialState> states) {
          if (states.contains(MaterialState.hovered))
            return Color(0XFFA700FA);
          return Color(0XFF00204C);
        }),
      ),
      child: Text(
        '$ButtonText',
        style: TextStyle(fontSize: fontsize, fontWeight: FontWeight.w700),
      ),
    );
  }
}
