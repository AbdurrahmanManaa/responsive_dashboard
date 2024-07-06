import 'package:flutter/material.dart';
import 'package:responsivedashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular12(context) {
    return const TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 12,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return const TextStyle(
      color: Color(0xffAAAAAA),
      fontSize: 14,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleRegular16(BuildContext context) {
    return const TextStyle(
      color: Color(0xff064061),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return const TextStyle(
      color: Color(0xff064061),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return const TextStyle(
      color: Color(0xff064061),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 18,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return const TextStyle(
      color: Color(0xff064061),
      fontSize: 20,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return const TextStyle(
      color: Color(0xffFFFFFF),
      fontSize: 24,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return const TextStyle(
      color: Color(0xff4EB7F2),
      fontSize: 16,
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(context) {
  double screenWidth = MediaQuery.sizeOf(context).width;
  if (screenWidth < SizeConfig.tabletBreakPoint) {
    return screenWidth / 550;
  } else if (screenWidth < SizeConfig.desktopBreakPoint) {
    return screenWidth / 1000;
  } else {
    return screenWidth / 1920;
  }
}


//!The following is not suitable for WEB as it doesn't rebuild UI on width change, better use MediaQuery.

// var dispatcher = PlatformDispatcher.instance;
// var physicsWidth = dispatcher.views.first.physicalSize.width;
// var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
// double width = physicsWidth / devicePixelRatio;
