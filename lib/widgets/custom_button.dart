import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  final Color? borderColor;
  final Function()? onTap;
  final String text;

  const CustomButton(
      {super.key, this.borderColor, this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        fixedSize: Size(mq.width, 56),
        backgroundColor: AppColors.turquoise,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: borderColor!),
          borderRadius: BorderRadius.circular(15.0),
        ),
      ),
      child: CustomText(
        label: text,
        color: AppColors.white,
        size: FontSize.xMedium,
        weight: FontWeight.w600,
      ),
    );
  }
}
