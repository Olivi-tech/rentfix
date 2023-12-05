import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:device_preview/device_preview.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/providers/bottom_navigation_provider.dart';
import 'package:rent_fix/screens/property_add_photo.dart';
import 'package:rent_fix/screens/screens.dart';

void main() => runApp(
      DevicePreview(
        builder: (context) => const RentFixApp(),
      ),
    );

class RentFixApp extends StatelessWidget {
  const RentFixApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BottomNavigationProvider>(
          create: (context) => BottomNavigationProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.paleSkyBlue,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
          ),
        ),
        home: const ActivitiesScreen(),
        // onGenerateRoute: Routers.generateRoute,
      ),
    );
  }
}
