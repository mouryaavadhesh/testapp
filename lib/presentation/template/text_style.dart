import 'package:flutter/material.dart';
import 'package:testapp/presentation/styles/theme_color.dart';



class MyTextStyle {
  static TextStyle text(String text, double size, Color color, String font,
      {int maxLines = 1}) {
    return TextStyle(
      color: color,
      fontFamily: font,
      fontSize: size,
    );
  }

  static TextStyle textError({
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: Colors.red,
      
      fontSize: 12,
      fontStyle: fontStyle,
    );
  }

  static TextStyle textHint({
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      
      fontSize: 12,
      fontStyle: fontStyle,
    );
  }

  static TextStyle textLabel({
    Color? color,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,

      fontSize: 14,
      fontStyle: fontStyle,
    );
  }

  static TextStyle textInterRegular({
    required int fontSize,
    Color? color,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w400,
      fontSize: fontSize.toDouble(),
      fontStyle: fontStyle,
    );
  }

  static TextStyle textInterMedium({
    required int fontSize,
    Color? color,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w500,
      fontSize: fontSize.toDouble(),
      fontStyle: fontStyle,
    );
  }

  static TextStyle textInterSemiBold({
    required int fontSize,
    Color? color,
    FontStyle fontStyle = FontStyle.normal,

  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w600,
      fontSize: fontSize.toDouble(),
      fontStyle: fontStyle,
    );
  }

  static TextStyle textInterBold({
    required int fontSize,
    Color? color,
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: color,
      fontWeight: FontWeight.w700,
      fontSize: fontSize.toDouble(),
      fontStyle: fontStyle,
    );
  }

  static TextStyle labelStyle({
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: ThemeColor.black1,
      fontWeight: FontWeight.w600,
      fontSize: 14,
      fontStyle: fontStyle,
    );
  }
}
