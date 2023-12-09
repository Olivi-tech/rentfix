import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/providers/providers.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyType extends StatelessWidget {
  const PropertyType({Key? key}) : super(key: key);

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomText(
              label: 'What’s the property type?',
              size: FontSize.xMedium,
              weight: FontWeight.w600,
            ),
            const CustomSize(
              height: 10,
            ),
            CustomPropertyContainer(
              onTap: () {
                borderProvider.updateContainer1Color(context);
                propertyProvider.setPropertyType = 'Apartment';
              },
              borderColor: borderProvider.container1Color,
              child: const CustomText(
                label: 'Apartment',
                size: FontSize.xMedium,
                color: AppColors.darkGreen,
                weight: FontWeight.w700,
              ),
            ),
            const CustomSize(
              height: 10,
            ),
            CustomPropertyContainer(
              onTap: () {
                borderProvider.updateContainer2Color(context);
                propertyProvider.setPropertyType = 'Condo';
              },
              borderColor: borderProvider.container2Color,
              child: const CustomText(
                label: 'Condo',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              ),
            ),
            const CustomSize(
              height: 10,
            ),
            CustomPropertyContainer(
              onTap: () {
                borderProvider.updateContainer3Color(context);
                propertyProvider.setPropertyType = 'Landed';
              },
              borderColor: borderProvider.container3Color,
              child: const CustomText(
                label: 'Landed',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w700,
              ),
            ),
            const CustomSize(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
