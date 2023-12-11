import 'package:flutter/material.dart';
import 'package:rent_fix/constants/constants.dart';
import 'package:rent_fix/screens/property_add_photo.dart';
import 'package:rent_fix/screens/property_address_screen.dart';
import 'package:rent_fix/screens/property_bathroom_screen.dart';
import 'package:rent_fix/screens/screens.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    return animatePage(_getPage(settings));
  }

  static Widget _getPage(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splash:
        return const SplashScreen();
      case AppRoutes.getStarted:
        return const GetStartedScreen();
      case AppRoutes.createAccount:
        return const CreateAccountScreen();
      case AppRoutes.otpVerify:
        return const OTPVerificationScreen();
      case AppRoutes.home:
        return const Home();
      case AppRoutes.listDetails:
        return const ListingDetails();
      case AppRoutes.offer:
        return const OfferScreen();
      case AppRoutes.discover:
        return const DiscoverScreen();
      case AppRoutes.chat:
        return const ChatScreen();
      case AppRoutes.profile:
        return const ProfileScreen();
      case AppRoutes.settings:
        return const SettingsScreen();
      case AppRoutes.propertyType:
        return const PropertyType(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyAgreement:
        return const PropertyRentalAgreement(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyRent:
        return const PropertyMonthlyRent(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyfurnished:
        return const PropertyFurnished(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyAddress:
        return const PropertyAddress(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertySize:
        return const PropertyApparmentSize(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyBedrooms:
        return const PropertyBedroom(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyBathrooms:
        return const PropertyBathroom(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyPhotos:
        return const PropertyPhotos(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyDate:
        return const PropertyDate(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyList:
        return const PropertyListingDetails(
          isOpenFromSummary: false,
        );
      case AppRoutes.propertyDescription:
        return const PropertyDescription(
          isOpenFromSummary: false,
        );

      default:
        AppRoutes.splash;
        return const SplashScreen();
    }
  }

  static PageRouteBuilder animatePage(Widget widget) {
    return PageRouteBuilder(
      transitionDuration: const Duration(milliseconds: 450),
      pageBuilder: (_, __, ___) => widget,
      transitionsBuilder: (_, Animation<double> animation, __, Widget child) {
        return customLeftSlideTransition(animation, child);
      },
    );
  }

  static Widget customLeftSlideTransition(
      Animation<double> animation, Widget child) {
    Tween<Offset> tween =
        Tween<Offset>(begin: const Offset(1, 0), end: const Offset(0, 0));
    return SlideTransition(
      position: tween.animate(animation),
      child: child,
    );
  }
}
