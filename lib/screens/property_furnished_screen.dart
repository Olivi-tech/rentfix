import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/fonts_size.dart';
import 'package:rent_fix/widgets/custom_appbar.dart';
import 'package:rent_fix/widgets/custom_container.dart';
import 'package:rent_fix/widgets/custom_size.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class PropertyFurnished extends StatelessWidget {
  const PropertyFurnished({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          CustomText(
            label: 'Is the property furnished?',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Unfurnished',
            size: FontSize.xMedium,
            color: AppColors.darkGreen,
            weight: FontWeight.w700,
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Partially Furnished',
            color: AppColors.darkGreen,
            size: FontSize.xMedium,
            weight: FontWeight.w700,
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Fully Furnished',
            color: AppColors.darkGreen,
            size: FontSize.xMedium,
            weight: FontWeight.w700,
          )),
        ]),
      ),
    );
  }
}
