import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/providers/providers.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyBedroom extends StatelessWidget {
  const PropertyBedroom({super.key});

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final bedroomProvider = Provider.of<BedroomProvider>(context);
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
              GestureDetector(
                onTap: () {
                  bedroomProvider.decrementBedroom();
                },
                child: Container(
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
              ),
              const Spacer(),
              CustomText(
                label: '${bedroomProvider.bedroomCount}',
                color: AppColors.darkGreen,
                size: FontSize.xMedium,
                weight: FontWeight.w500,
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {
                  bedroomProvider.incrementBedroom();
                },
                child: Container(
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
              ),
            ]),
          ),
          const CustomSize(
            height: 50,
          ),
          CustomButton(
            width: mq.width,
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.propertyBathrooms);
              propertyProvider.setBedroom = '${bedroomProvider.bedroomCount}';
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
