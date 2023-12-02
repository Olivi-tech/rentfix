import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';

class PropertyContainer extends StatelessWidget {
  final Color color;
  final double radius;
  final Color borderColor;
  final Widget? child;
  final double? height;
  final double? width;

  const PropertyContainer(
      {super.key,
      this.color = Colors.white,
      this.height,
      this.width = double.infinity,
      this.child,
      this.radius = 25,
      this.borderColor = AppColors.teal});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: color,
          border: Border.all(color: borderColor)),
      child: child,
    );
  }
}
