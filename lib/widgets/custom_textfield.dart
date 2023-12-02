import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/utils/utils.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController? controller;
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
  final Color borderColor;
  final double? borderRadius;

  const CustomTextField({
    super.key,
    this.iconData,
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
    this.borderColor = AppColors.black,
    this.borderRadius = 20,
  });

  @override
  build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextFormField(
        cursorColor: AppColors.turquoise,
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
            fontWeight: FontWeight.w500,
            height: 0.16,
          ),
          fillColor: fillColor,
          suffixIcon: suffixIcon,
          suffixStyle: suffixStyle,
          prefixIcon: iconData != null ? Icon(iconData) : null,
          contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 15),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              width: 1,
              color: borderColor,
            ),
            borderRadius: BorderRadius.circular(borderRadius!),
          ),
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(borderRadius!),
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
