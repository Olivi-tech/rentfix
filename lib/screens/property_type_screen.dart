import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/fonts_size.dart';
import 'package:rent_fix/widgets/custom_appbar.dart';
import 'package:rent_fix/widgets/custom_container.dart';
import 'package:rent_fix/widgets/custom_size.dart';
import 'package:rent_fix/widgets/custom_text.dart';

class PropertyType extends StatelessWidget {
  const PropertyType({super.key});

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
            label: 'What’s the property type?',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Apartment',
            size: FontSize.xMedium,
            color: AppColors.darkGreen,
            weight: FontWeight.w700,
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Condo',
            color: AppColors.darkGreen,
            size: FontSize.xMedium,
            weight: FontWeight.w700,
          )),
          CustomSize(
            height: 10,
          ),
          PropertyContainer(
              child: CustomText(
            label: 'Landed',
            color: AppColors.darkGreen,
            size: FontSize.xMedium,
            weight: FontWeight.w700,
          )),
        ]),
      ),
    );
  }
}
