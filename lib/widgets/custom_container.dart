import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  final double? height;
  final Color? color;
  final double? width;
  final BoxDecoration? decoration;
  final Color? shapeColor;
  final bool isShape;
  final BoxDecoration? shapeDecoration;
  final ShapeBorder? borderShape;
  final Gradient? gradient;
  final Shadow? shadow;
  final Widget? child;

  const CustomContainer({
    Key? key,
    this.height,
    this.width,
    this.decoration,
    this.shapeColor,
    this.child,
    this.color,
    this.shadow,
    this.gradient,
    this.isShape = false,
    this.shapeDecoration,
    this.borderShape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: shapeDecoration ?? decoration,
      child: child,
    );
  }
}
