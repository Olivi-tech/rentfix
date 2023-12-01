import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showSearchIcon;

  const CustomAppBar({
    Key? key,
    required this.title,
    this.showSearchIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: CustomText(
        label: title,
        size: FontSize.xMedium,
        weight: FontWeight.w500,
      ),
      leading: IconButton(
        icon: const Icon(Icons.arrow_back, color: AppColors.black),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      centerTitle: true,
      actions: <Widget>[
        if (showSearchIcon)
          IconButton(
            icon: const Icon(Icons.search, color: AppColors.black),
            onPressed: () {
              // Handle search icon press
            },
          ),
      ],
      elevation: 0.0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1),
        child: Container(
          color: AppColors.paleCayn,
          height: 1,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
