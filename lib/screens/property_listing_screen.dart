import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyListingDetails extends StatelessWidget {
  const PropertyListingDetails({super.key});

  @override
  Widget build(BuildContext context) {
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
            SummaryContainer(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyAddress);
              },
              headingText: 'Address',
              detailText: '18 Serangoon Garden Way,\nThailand, 54000',
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyBedrooms);
              },
              headingText: 'Bedroom',
              detailText: '3',
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Bathroom',
              detailText: '3',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyBathrooms);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Size',
              detailText: '3000 sqft',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertySize);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Property type',
              detailText: 'HDB',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyType);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'What are you renting',
              detailText: 'Room',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyRent);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Furnishing',
              detailText: 'Semi Furnished',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyfurnished);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Amount',
              detailText: 'S\$300',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyRent);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              headingText: 'Available for rent',
              detailText: 'Available now',
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyDate);
              },
            ),
            const CustomSize(
              height: 10,
            ),
            SummaryContainer(
              onTap: () {
                Navigator.of(context).pushNamed(AppRoutes.propertyDescription);
              },
              headingText: 'Property description',
              detailText:
                  'Lorem ipsum dolor sit amet, consectetur\nadipiscing elit, sed do eiusmod tempor...',
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
                              Row(
                                children: [
                                  Image.asset(
                                    AppImages.roomImage,
                                    width: 64,
                                    height: 64,
                                  ),
                                  const CustomSize(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    AppImages.roomImage,
                                    width: 64,
                                    height: 64,
                                  ),
                                  const CustomSize(
                                    width: 5,
                                  ),
                                  Image.asset(
                                    AppImages.roomImage,
                                    width: 64,
                                    height: 64,
                                  ),
                                ],
                              )
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
}
