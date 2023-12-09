import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyAddress extends StatefulWidget {
  const PropertyAddress({super.key});

  @override
  State<PropertyAddress> createState() => _PropertyAddressState();
}

class _PropertyAddressState extends State<PropertyAddress> {
  TextEditingController addressController = TextEditingController();
  TextEditingController unitController = TextEditingController();
  TextEditingController blockController = TextEditingController();
  TextEditingController floorController = TextEditingController();
  TextEditingController postCodeController = TextEditingController();

  final globalKey = GlobalKey<FormState>();
  @override
  void dispose() {
    addressController.dispose();
    unitController.dispose();
    blockController.dispose();
    floorController.dispose();
    postCodeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final propertyProvider = Provider.of<Property>(context);
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Form(
        key: globalKey,
        child: Padding(
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
                  validator: (input) {
                    if (input == null || input.isEmpty) {
                      return 'Please enter address';
                    }
                    if (!isValidAddress(input)) {
                      return 'inValid';
                    }
                    return null;
                  }),
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
                                    keyboardType: TextInputType.number,
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return 'Please enter post code';
                                      }
                                      if (!isValidInput(input)) {
                                        return 'inValid';
                                      }
                                      return null;
                                    }),
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
                                    keyboardType: TextInputType.number,
                                    validator: (input) {
                                      if (input == null || input.isEmpty) {
                                        return 'Please enter block number';
                                      }
                                      if (!isValidInput(input)) {
                                        return 'inValid';
                                      }
                                      return null;
                                    }),
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
                                  keyboardType: TextInputType.number,
                                  validator: (input) {
                                    if (input == null || input.isEmpty) {
                                      return 'Please enter floor';
                                    }

                                    return null;
                                  }),
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
                                  keyboardType: TextInputType.number,
                                  validator: (input) {
                                    if (input == null || input.isEmpty) {
                                      return 'Please enter unit';
                                    }
                                    if (!isValidInput(input)) {
                                      return 'inValid';
                                    }
                                    return null;
                                  }),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
              CustomButton(
                width: MediaQuery.of(context).size.width,
                onPressed: () {
                  if (globalKey.currentState!.validate()) {
                    FocusScope.of(context).unfocus();
                    Navigator.of(context).pushNamed(AppRoutes.propertySize);
                    propertyProvider.setAddress = addressController.text;
                    propertyProvider.setPostCode = postCodeController.text;
                    propertyProvider.setBlockNo = blockController.text;
                    propertyProvider.setFloor = floorController.text;
                    propertyProvider.unit = unitController.text;
                  }
                },
                btnColor: AppColors.turquoise,
                borderColor: Colors.transparent,
                textColor: AppColors.white,
                text: 'Next',
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
