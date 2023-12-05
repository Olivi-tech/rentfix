import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyDescription extends StatelessWidget {
  const PropertyDescription({super.key});

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
            label: 'Write a short description of this property.',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 10,
          ),
          const CustomText(
            label: 'Description',
            color: AppColors.darkGreen,
            size: FontSize.xxMedium,
            weight: FontWeight.w500,
          ),
          const CustomSize(
            height: 10,
          ),
          SizedBox(
            height: 160,
            child: CustomTextField(
              borderRadius: 15,
              maxLines: 10,
              hintText: 'Enter description here',
              borderColor: AppColors.pastelblue,
              controller: sizeController,
              fillColor: AppColors.white,
            ),
          ),
          const CustomSize(
            height: 50,
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
