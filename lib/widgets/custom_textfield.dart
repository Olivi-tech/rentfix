import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
  final bool isBorder;
  final Widget? suffixIcon;
  final List<TextInputFormatter>? textInputFormatter;
  final bool isVisibleText;
  final double height;
  final Color fillColor;
  final double? width;
  final TextStyle? hintStyle;
  final TextStyle? suffixStyle;
  final IconData? iconData;
  final int maxLines;
  final TextInputType? keyboardType;
  final FormValidator? validator;
  final bool readOnly;

  const CustomTextField({
    super.key,
    this.iconData,
    this.isBorder = false,
    this.controller,
    this.height = 56,
    this.textInputFormatter,
    this.suffixStyle,
    required this.hintText,
    required this.fillColor,
    this.isVisibleText = false,
    this.readOnly = false,
    this.hintStyle,
    this.suffixIcon,
    this.maxLines = 1,
    this.keyboardType,
    this.validator,
    this.width,
  });

  @override
  build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        cursorColor: AppColors.turquoiseBlue,
        inputFormatters: textInputFormatter,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        validator: validator,
        readOnly: readOnly,
        controller: controller,
        keyboardType: keyboardType,
        maxLines: maxLines,
        obscureText: isVisibleText,
        obscuringCharacter: '*',
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const TextStyle(
            color: Color(0xFFB8CBCB),
            fontSize: FontSize.small,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
            height: 0.16,
          ),
          fillColor: fillColor,
          suffixIcon: suffixIcon,
          suffixStyle: suffixStyle,
          prefixIconColor: AppColors.teal,
          prefixIcon: iconData != null ? Icon(iconData) : null,
          contentPadding: const EdgeInsets.only(left: 10, top: 20, bottom: 10),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              width: 0.2,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: isBorder ? AppColors.teal : Colors.black,
            ),
            borderRadius: BorderRadius.circular(20),
          ),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}

bool isValidEmail(String input) {
  final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$');
  return emailRegex.hasMatch(input);
}
