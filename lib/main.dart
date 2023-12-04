import 'package:flutter/material.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/screens/activities_screen.dart';
import 'package:rent_fix/screens/property_description_screen.dart';
import 'package:rent_fix/screens/property_furnished_screen.dart';
import 'package:rent_fix/screens/property_size_apparment_screen.dart';
import 'package:rent_fix/screens/property_type_screen.dart';
import 'package:rent_fix/screens/property_rental_screen.dart';
import 'package:rent_fix/screens/screens.dart';
import 'package:rent_fix/widgets/custom_container.dart';

import 'screens/property_monthly_rent_screen.dart';

void main() {
  runApp(const RentFixApp());
}

class RentFixApp extends StatelessWidget {
  const RentFixApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.paleSkyBlue,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
        ),
      ),
      home: PropertyDescription(),
    );
  }
}
