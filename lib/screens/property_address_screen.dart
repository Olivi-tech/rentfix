import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyAddress extends StatelessWidget {
  const PropertyAddress({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController addressController = TextEditingController();
    TextEditingController unitController = TextEditingController();
    TextEditingController blockController = TextEditingController();
    TextEditingController floorController = TextEditingController();
    TextEditingController postCodeController = TextEditingController();
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CustomText(
              label: 'What’s the address of property?',
              size: FontSize.xMedium,
              weight: FontWeight.w600,
            ),
            const CustomSize(
              height: 10,
            ),
            const CustomText(
              label:
                  'Enter the address of property you want to create a\ncontract for.',
              size: FontSize.small,
              weight: FontWeight.w400,
            ),
            const CustomSize(
              height: 10,
            ),
            const CustomText(
              label: 'Address',
              color: AppColors.darkGreen,
              size: FontSize.xxMedium,
              weight: FontWeight.w500,
            ),
            const CustomSize(
              height: 10,
            ),
            CustomTextField(
              borderRadius: 15,
              hintText: 'Enter the address here',
              borderColor: AppColors.pastelblue,
              controller: addressController,
              fillColor: AppColors.white,
            ),
            const CustomSize(
              height: 10,
            ),
            SizedBox(
              width: mq.width,
              height: mq.height / 3,
              child: Column(
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              label: 'Postcode',
                              color: AppColors.darkGreen,
                              size: FontSize.xxMedium,
                              weight: FontWeight.w500,
                            ),
                            const CustomSize(
                              height: 10,
                            ),
                            SizedBox(
                              width: mq.width * 0.44,
                              child: CustomTextField(
                                borderRadius: 15,
                                hintText: 'Enter postcode',
                                borderColor: AppColors.pastelblue,
                                controller: postCodeController,
                                fillColor: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                        const CustomSize(
                          width: 8,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const CustomText(
                              label: 'Block Number',
                              color: AppColors.darkGreen,
                              size: FontSize.xxMedium,
                              weight: FontWeight.w500,
                            ),
                            const CustomSize(
                              height: 8,
                            ),
                            SizedBox(
                              width: mq.width * 0.44,
                              child: CustomTextField(
                                borderRadius: 15,
                                hintText: 'Enter block number',
                                borderColor: AppColors.pastelblue,
                                controller: blockController,
                                fillColor: AppColors.white,
                              ),
                            ),
                          ],
                        ),
                      ]),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            label: 'Floor',
                            color: AppColors.darkGreen,
                            size: FontSize.xxMedium,
                            weight: FontWeight.w500,
                          ),
                          const CustomSize(
                            height: 10,
                          ),
                          SizedBox(
                            width: mq.width * 0.44,
                            child: CustomTextField(
                              borderRadius: 15,
                              hintText: 'Enter Floor',
                              borderColor: AppColors.pastelblue,
                              controller: floorController,
                              fillColor: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                      const CustomSize(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CustomText(
                            label: 'Unit',
                            color: AppColors.darkGreen,
                            size: FontSize.xxMedium,
                            weight: FontWeight.w500,
                          ),
                          const CustomSize(
                            height: 10,
                          ),
                          SizedBox(
                            width: mq.width * 0.44,
                            child: CustomTextField(
                              borderRadius: 15,
                              hintText: 'Enter Unit',
                              borderColor: AppColors.pastelblue,
                              controller: unitController,
                              fillColor: AppColors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            CustomButton(
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
      ),
    );
  }
}
