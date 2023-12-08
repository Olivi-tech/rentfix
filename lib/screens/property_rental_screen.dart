import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/providers/providers.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyRentalAgreement extends StatelessWidget {
  const PropertyRentalAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;

    final propertyTypeProvider = Provider.of<PropertyTypeProvider>(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomText(
            label: 'What will be rental agreement be for?  ',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 10,
          ),
          CustomPropertyContainer(
              onTap: () {
                propertyTypeProvider.updateContainer4Color(context);
              },
              borderColor: propertyTypeProvider.container4Color,
              child: const Column(
                children: [
                  CustomText(
                    label: 'Entire Unit',
                    size: FontSize.xMedium,
                    color: AppColors.darkGreen,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    label: 'You are renting the entire unit',
                    size: FontSize.small,
                    color: AppColors.darkGreen,
                    weight: FontWeight.w400,
                  ),
                ],
              )),
          const CustomSize(
            height: 10,
          ),
          CustomPropertyContainer(
              onTap: () {
                propertyTypeProvider.updateContainer5Color(context);
              },
              borderColor: propertyTypeProvider.container5Color,
              child: const Column(
                children: [
                  CustomText(
                    label: 'Room',
                    color: AppColors.darkGreen,
                    size: FontSize.xMedium,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    label: 'Shared Bathrooms',
                    size: FontSize.small,
                    color: AppColors.darkGreen,
                    weight: FontWeight.w400,
                  ),
                ],
              )),
          const CustomSize(
            height: 10,
          ),
          CustomPropertyContainer(
              onTap: () {
                propertyTypeProvider.updateContainer6Color(context);
              },
              borderColor: propertyTypeProvider.container6Color,
              child: const Column(
                children: [
                  CustomText(
                    label: 'Ensuite',
                    color: AppColors.darkGreen,
                    size: FontSize.xMedium,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    label: 'Private Bathrooms',
                    size: FontSize.small,
                    color: AppColors.darkGreen,
                    weight: FontWeight.w400,
                  ),
                ],
              )),
          const CustomSize(
            height: 10,
          ),
          CustomPropertyContainer(
              onTap: () {
                propertyTypeProvider.updateContainer7Color(context);
              },
              borderColor: propertyTypeProvider.container7Color,
              child: const Column(
                children: [
                  CustomText(
                    label: 'Studio',
                    color: AppColors.darkGreen,
                    size: FontSize.xMedium,
                    weight: FontWeight.w700,
                  ),
                  CustomText(
                    label: 'Private Kitchenette with attached bathroom',
                    size: FontSize.small,
                    color: AppColors.darkGreen,
                    weight: FontWeight.w400,
                  ),
                ],
              )),
          const CustomSize(
            height: 10,
          ),
        ]),
      ),
    );
  }
}
