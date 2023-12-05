import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyBedroom extends StatelessWidget {
  const PropertyBedroom({super.key});

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
            label: 'How many bedrooms?',
            size: FontSize.xMedium,
            weight: FontWeight.w600,
          ),
          const CustomSize(
            height: 20,
          ),
          const CustomText(
            label: 'Numbers of Bedrooms',
            color: AppColors.darkGreen,
            size: FontSize.xxMedium,
            weight: FontWeight.w500,
          ),
          const CustomSize(
            height: 10,
          ),
          Container(
            width: mq.width,
            height: 56,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                side: const BorderSide(width: 1, color: AppColors.teal),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Row(children: [
              Container(
                width: 72,
                height: 56,
                decoration: ShapeDecoration(
                  color: AppColors.skyBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: AppColors.teal),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                    child: Icon(
                  Icons.remove,
                  color: AppColors.darkGreen,
                )),
              ),
              const Spacer(),
              const CustomText(
                label: '5',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w500,
              ),
              const Spacer(),
              Container(
                width: 72,
                height: 56,
                decoration: ShapeDecoration(
                  color: AppColors.skyBlue,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(width: 1, color: AppColors.teal),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Center(
                    child: Icon(
                  Icons.add,
                  color: AppColors.darkGreen,
                )),
              ),
            ]),
          ),
          const CustomSize(
            height: 50,
          ),
          CustomButton(
            width: mq.width,
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
