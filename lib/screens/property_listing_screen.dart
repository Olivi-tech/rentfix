import 'dart:io';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/widgets/widgets.dart';
import '../providers/image_picker_provider.dart';

class PropertyListingDetails extends StatefulWidget {
  const PropertyListingDetails({super.key});

  @override
  State<PropertyListingDetails> createState() => _PropertyListingDetailsState();
}

class _PropertyListingDetailsState extends State<PropertyListingDetails> {
  late Property imagePickerProvider;
  @override
  Widget build(BuildContext context) {
    // final mq = MediaQuery.of(context).size;
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
              label: 'Summary',
              size: FontSize.xxLarge,
              weight: FontWeight.w600,
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertyAddress);
                  },
                  headingText: 'Address',
                  detailText: property.getAddress,
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertyBedrooms);
                  },
                  headingText: 'Bedroom',
                  detailText: property.getBedroom,
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Bathroom',
                  detailText: property.getBathroom,
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.propertyBathrooms);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Size',
                  detailText: property.getAppartmentSize,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertySize);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Property type',
                  detailText: property.getPropertyType,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertyType);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'What are you renting',
                  detailText: property.getAgreement,
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.propertyAgreement);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Furnishing',
                  detailText: property.getFurnishing,
                  onTap: () {
                    Navigator.of(context)
                        .pushNamed(AppRoutes.propertyfurnished);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Amount',
                  detailText: property.getRent,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertyRent);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                  headingText: 'Available for rent',
                  detailText: property.getAvaliableDate,
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.propertyDate);
                  },
                );
              },
            ),
            const CustomSize(
              height: 10,
            ),
            Consumer<Property>(
              builder: (context, property, child) {
                return SummaryContainer(
                    onTap: () {
                      Navigator.of(context)
                          .pushNamed(AppRoutes.propertyDescription);
                    },
                    headingText: 'Property description',
                    detailText: property.description);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyPhotos);
              },
              child: ShapeContainer(
                height: 122,
                decoration: ShapeDecoration(
                  color: AppColors.paleAqua,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Center(
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10, top: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const CustomText(
                                label: 'Property Images',
                                color: AppColors.darkGreen,
                                size: FontSize.xxMedium,
                                weight: FontWeight.w600,
                              ),
                              const CustomSize(
                                height: 3,
                              ),
                              Consumer<ImagePickerProvider>(
                                builder: (context, imagePick, child) {
                                  if (imagePick.paths.isEmpty) {
                                    return Container();
                                  } else {
                                    return SizedBox(
                                        width: 240,
                                        height: 64,
                                        child: ListView.builder(
                                          scrollDirection: Axis.horizontal,
                                          itemCount: imagePick.paths.length,
                                          itemBuilder: (context, index) {
                                            return Padding(
                                              padding: const EdgeInsets.only(
                                                  right: 5),
                                              child: _buildImagePreview(
                                                  imagePick.paths[index]),
                                            );
                                          },
                                        ));
                                  }
                                },
                              ),
                            ],
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ShapeContainer(
                                width: 32,
                                height: 32,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                child: Image.asset(AppImages.pen),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
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
            const CustomSize(
              height: 10,
            ),
          ]),
        ),
      ),
    );
  }

  Widget _buildImagePreview(String imagePath) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.file(
            File(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
