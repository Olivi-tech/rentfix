import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/screens/screens.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) {
      return const RentFixApp();
    },
  ));
}

class RentFixApp extends StatelessWidget {
  const RentFixApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: AppColors.paleSkyBlue,
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.white,
        ),
      ),
      home: const OfferScreen(),
    );
  }
}
