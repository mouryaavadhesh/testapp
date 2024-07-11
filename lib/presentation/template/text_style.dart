import 'package:flutter/material.dart';
import 'package:testapp/presentation/styles/font_type.dart';
import 'package:testapp/presentation/styles/theme_color.dart';



class MyStallTextStyle {
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
      fontFamily: FontType.InterRegular,
      fontSize: 12,
      fontStyle: fontStyle,
    );
  }

  static TextStyle textHint({
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      fontFamily: FontType.InterRegular,
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
      fontFamily: FontType.InterRegular,
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
      fontFamily: FontType.InterRegular,
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
      fontFamily: FontType.InterMedium,
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
      fontFamily: FontType.InterSemiBold,
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
      fontFamily: FontType.InterBold,
      fontSize: fontSize.toDouble(),
      fontStyle: fontStyle,
    );
  }

  static TextStyle labelStyle({
    FontStyle fontStyle = FontStyle.normal,
  }) {
    return TextStyle(
      color: ThemeColor.black1,
      fontFamily: FontType.InterMedium,
      fontSize: 14,
      fontStyle: fontStyle,
    );
  }
}
