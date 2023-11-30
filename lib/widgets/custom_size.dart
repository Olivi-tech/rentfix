import 'package:flutter/material.dart';

class CustomSize extends StatelessWidget {
  final double? height;
  final double? width;
  final Widget? child;

  const CustomSize({super.key, this.height, this.width, this.child});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: child,
    );
  }
}
