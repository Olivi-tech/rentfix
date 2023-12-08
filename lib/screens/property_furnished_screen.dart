import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/providers/border_provider.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyFurnished extends StatelessWidget {
  const PropertyFurnished({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomText(
            label: 'Is the property furnished?',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 10,
          ),
          const CustomPropertyContainer(
              borderColor: AppColors.turquoise,
              child: CustomText(
                label: 'Unfurnished',
                size: FontSize.xMedium,
                color: AppColors.darkGreen,
                weight: FontWeight.w700,
              )),
          const CustomSize(
            height: 10,
          ),
          const CustomPropertyContainer(
              borderColor: AppColors.turquoise,
              child: CustomText(
                label: 'Partially Furnished',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              )),
          const CustomSize(
            height: 10,
          ),
          CustomPropertyContainer(
            borderColor: AppColors.turquoise,
            child: CustomText(
              label: 'Fully Furnished',
              color: AppColors.darkGreen,
              size: FontSize.xMedium,
              weight: FontWeight.w700,
            ),
          ),
          const CustomSize(
            height: 10,
          ),
          CustomButton(
            width: mq.width,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.propertyRent);
            },
            btnColor: AppColors.turquoise,
            borderColor: Colors.transparent,
            textColor: AppColors.white,
            text: 'Next',
          ),
        ]),
      ),
    );
  }
}
