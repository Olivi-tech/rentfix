import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/providers/providers.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyRentalAgreement extends StatelessWidget {
  const PropertyRentalAgreement({super.key});

  @override
  Widget build(BuildContext context) {
    final borderProvider = Provider.of<SelectedBorderProvider>(context);
    final propertyProvider = Provider.of<Property>(context);
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
                borderProvider.updateContainer4Color(context);
                propertyProvider.setAgreement = 'Entire Unit';
              },
              borderColor: borderProvider.container4Color,
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
                borderProvider.updateContainer5Color(context);
                propertyProvider.setAgreement = 'Room';
              },
              borderColor: borderProvider.container5Color,
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
                borderProvider.updateContainer6Color(context);
                propertyProvider.setAgreement = 'Ensuite';
              },
              borderColor: borderProvider.container6Color,
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
                borderProvider.updateContainer7Color(context);
                propertyProvider.setAgreement = 'Studio';
              },
              borderColor: borderProvider.container7Color,
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
