import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final BorderRadius? borderRadius;
  final Color? borderColor;
  final Function()? onTap;

  const CustomButton(
      {super.key, this.borderRadius, this.borderColor, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {

      },
      child: Text('Button'),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(100, 50),
        backgroundColor: Colors.blue,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor!),
          borderRadius: borderRadius!, // <-- Radius
        ),
      ),
    );
    ;
  }
}
