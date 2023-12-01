import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String label;
  final Color? color;
  final FontWeight? weight;
  final TextAlign? textAlign;
  final double? size;
  final String fonFamily;
  final TextDecoration? decoration;

  const CustomText(
      {super.key,
      required this.label,
      this.decoration,
      this.textAlign,
      this.fonFamily = 'Inter',
      this.weight,
      this.color,
      this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: TextStyle(
          color: color,
          fontWeight: weight,
          fontFamily: fonFamily,
          fontSize: size,
          decoration: decoration),
    );
  }
}
