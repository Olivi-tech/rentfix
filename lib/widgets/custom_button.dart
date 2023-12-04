import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final Widget? child;
  final double height;
  final double radius;
  final double width;
  final Function() onPressed;
  final Color? btnColor;
  final Color borderColor;

  const CustomButton({
    super.key,
    this.borderRadius,
    this.borderColor = Colors.black,
    required this.onPressed,
    this.btnColor = Colors.white,
    this.child,
    this.width = 364,
    this.radius = 15,
    this.height = 56,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(width, height),
        backgroundColor: btnColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor),
          borderRadius: BorderRadius.circular(radius), // <-- Radius
        ),
      ),
      child: child,
    );
  }
}
