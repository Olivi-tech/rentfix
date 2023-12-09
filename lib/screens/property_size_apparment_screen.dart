import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/model/property_model.dart';
import 'package:rent_fix/widgets/widgets.dart';

class PropertyApparmentSize extends StatefulWidget {
  const PropertyApparmentSize({super.key});

  @override
  State<PropertyApparmentSize> createState() => PropertyApparmentSizeState();
}

class PropertyApparmentSizeState extends State<PropertyApparmentSize> {
  TextEditingController sizeController = TextEditingController();

  final globalKey = GlobalKey<FormState>();
  @override
  void dispose() {
    sizeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final propertyProvider = Provider.of<Property>(context);
    return Scaffold(
      appBar: const CustomAppBar(
        title: 'List Your Property',
        showSearchIcon: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Form(
          key: globalKey,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                keyboardType: TextInputType.number,
                validator: (input) {
                  if (input == null || input.isEmpty) {
                    return 'Please enter size';
                  }
                  if (!isValidInput(input)) {
                    return 'inValid';
                  }
                  return null;
                }),
            const CustomSize(
              height: 10,
            ),
            CustomButton(
              width: MediaQuery.of(context).size.width,
              onPressed: () {
                if (globalKey.currentState!.validate()) {
                  FocusScope.of(context).unfocus();
                  Navigator.of(context).pushNamed(AppRoutes.propertyBedrooms);
                  propertyProvider.setAppartmentSize = sizeController.text;
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
    );
  }
}
