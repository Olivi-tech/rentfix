import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyApparmentSize extends StatelessWidget {
  const PropertyApparmentSize({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController sizeController = TextEditingController();
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const CustomText(
            label: 'What is the size of the apartment?',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 10,
          ),
          const CustomText(
            label: 'Apartment Size',
            color: AppColors.darkGreen,
            size: FontSize.xxMedium,
            weight: FontWeight.w500,
          ),
          const CustomSize(
            height: 10,
          ),
          CustomTextField(
            borderRadius: 15,
            hintText: 'Enter size in sqft',
            borderColor: AppColors.pastelblue,
            controller: sizeController,
            fillColor: AppColors.white,
          ),
          const CustomSize(
            height: 10,
          ),
          CustomButton(
            width: MediaQuery.of(context).size.width,
            onPressed: () {},
            btnColor: AppColors.turquoise,
            borderColor: Colors.transparent,
            child: const CustomText(
              label: 'Next',
              color: AppColors.white,
              size: FontSize.xMedium,
              weight: FontWeight.w600,
            ),
          ),
        ]),
      ),
    );
  }
}
