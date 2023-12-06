import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:rent_fix/constants/app_colors.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/providers/bottom_navigation_provider.dart';
import 'package:rent_fix/widgets/widgets.dart';

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
          textTheme: GoogleFonts.interTextTheme(Theme.of(context).textTheme),
          useMaterial3: true,
          scaffoldBackgroundColor: AppColors.paleSkyBlue,
          appBarTheme: const AppBarTheme(
            backgroundColor: AppColors.white,
          ),
        ),
        // home: const ActivitiesScreen(),
        onGenerateRoute: Routers.generateRoute,
      ),
    );
  }
}
