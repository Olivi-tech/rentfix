import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:rent_fix/screens/screens.dart';

void main() {
  runApp(const RentFixApp());
}

class RentFixApp extends StatelessWidget {
  const RentFixApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const GetStartedScreen(),
    );
  }
}
