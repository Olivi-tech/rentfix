import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyMonthlyRent extends StatelessWidget {
  const PropertyMonthlyRent({super.key});

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
            label:
                'How much should the price per month be for this unit? The final price can be adjusted in the contract.',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 10,
          ),
          const CustomText(
            label: 'Monthly Rent',
            color: AppColors.darkGreen,
            size: FontSize.xxMedium,
            weight: FontWeight.w500,
          ),
          const CustomSize(
            height: 10,
          ),
          CustomTextField(
            borderRadius: 15,
            hintText: 'Enter amount in S\$',
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
            textColor: AppColors.white,
            text: 'Next',
          ),
        ]),
      ),
    );
  }
}
