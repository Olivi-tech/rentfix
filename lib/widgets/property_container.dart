import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';

class PropertyContainer extends StatelessWidget {
  final Color color;
  final double radius;
  final Color borderColor;
  final Widget? child;

  const PropertyContainer(
      {super.key,
      this.color = Colors.white,
      this.child,
      this.radius = 25,
      this.borderColor = AppColors.borderColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          border: Border.all(color: borderColor)),
      child: child,
    );
  }
}
