import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class TextStyles {

  static TextStyle stylesreguler32( ) {
    return TextStyle(
        color: Colors.white,
        fontSize: getResponsiveFontSize( fontSize: 32),
        fontFamily: 'Lato',
        fontWeight: FontWeight.w700);
  }
  static TextStyle stylesreguler40( ) {
    return TextStyle(
        color: Colors.white,
        fontSize: getResponsiveFontSize( fontSize: 40),
        fontFamily: 'Lato',
        fontWeight: FontWeight.w700);
  }
  static TextStyle stylesreguler16( ) {
    return TextStyle(
        color: Colors.white,
        fontSize: getResponsiveFontSize( fontSize: 16),
        fontFamily: 'Lato',
        fontWeight: FontWeight.w400);
  }
}

double getResponsiveFontSize({required double fontSize}) {
  double scaleFactor = getScaleFactor();
  double responsiveFontSize = fontSize * scaleFactor;

  double lowerLimit = fontSize * .8;
  double upperLimit = fontSize * 1.2;

  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor() {
  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio;
return width;
  // double width = MediaQuery.sizeOf(context).width;
  // if (width < 700) {
  //   return width / 600;
  // } else if (width < 150) {
  //   return width / 900;
  // } else {
  //   return width / 1300;
  // }
}