import 'package:flutter/material.dart';
import 'package:testapp/presentation/styles/font_type.dart';
import 'package:testapp/presentation/widgets/custom_text.dart';


class MyStallText {
  static Widget text(String text, double size, Color color, String font,
      {int maxLines = 1}) {
    return CustomText(
      text: text,
      color: color,
      fontFamily: font,
      fontSize: size,
      maxLines: maxLines,
      textOverflow: TextOverflow.ellipsis,
    );
  }

  static CustomText textInterRegular(
      {required String text,
      required int fontSize,
      Color? color,
      int maxLines = 1,
      TextOverflow textOverFlow = TextOverflow.ellipsis,
      TextAlign textAlign = TextAlign.start,
      FontStyle fontStyle = FontStyle.normal,
      TextDecoration textDecoration = TextDecoration.none}) {
    return CustomText(
      color: color,
      text: text,
      fontFamily: FontType.InterRegular,
      maxLines: maxLines,
      textOverflow: textOverFlow,
      fontSize: fontSize.toDouble(),
      textAlign: textAlign,
      textDecoration: textDecoration,
      fontStyle: fontStyle,
    );
  }

  static CustomText textInterSemiBold(
      {required String text,
      required int fontSize,
      Color? color,
      int maxLines = 1,
      TextOverflow textOverFlow = TextOverflow.ellipsis,
      TextAlign textAlign = TextAlign.start,
      TextDecoration textDecoration = TextDecoration.none,
      double letterSpacing = 0}) {
    return CustomText(
      color: color,
      text: text,
      fontFamily: FontType.InterBold,
      maxLines: maxLines,
      textOverflow: textOverFlow,
      fontSize: fontSize.toDouble(),
      textAlign: textAlign,
      textDecoration: textDecoration,
      letterSpacing: letterSpacing,
    );
  }

  static CustomText textInterMedium(
      {required String text,
      required int fontSize,
      Color? color,
      int maxLines = 1,
      TextOverflow textOverFlow = TextOverflow.ellipsis,
      TextAlign textAlign = TextAlign.start,
      FontStyle fontStyle = FontStyle.normal,
      TextDecoration textDecoration = TextDecoration.none,
      Color? decorationColor}) {
    return CustomText(
      color: color,
      text: text,
      fontFamily: FontType.InterMedium,
      maxLines: maxLines,
      textOverflow: textOverFlow,
      fontSize: fontSize.toDouble(),
      textAlign: textAlign,
      textDecoration: textDecoration,
      fontStyle: fontStyle,
      decorationColor: decorationColor ?? color,
    );
  }

  static CustomText textInterBold(
      {required String text,
      required int fontSize,
      Color? color,
      int maxLines = 1,
      TextOverflow textOverFlow = TextOverflow.ellipsis,
      TextAlign textAlign = TextAlign.start,
      TextDecoration textDecoration = TextDecoration.none}) {
    return CustomText(
      color: color,
      text: text,
      maxLines: maxLines,
      textOverflow: textOverFlow,
      fontSize: fontSize.toDouble(),
      textAlign: textAlign,
      textDecoration: textDecoration,
      fontStyle: FontStyle.normal,
    );
  }

  static CustomText textInterLight(
      {required String text,
      required int fontSize,
      Color? color,
      int maxLines = 1,
      TextOverflow textOverFlow = TextOverflow.ellipsis,
      TextAlign textAlign = TextAlign.start,
      FontStyle fontStyle = FontStyle.normal,
      TextDecoration textDecoration = TextDecoration.none}) {
    return CustomText(
      color: color,
      text: text,
      fontFamily: FontType.InterLight,
      maxLines: maxLines,
      textOverflow: textOverFlow,
      fontSize: fontSize.toDouble(),
      textAlign: textAlign,
      textDecoration: textDecoration,
      fontStyle: fontStyle,
    );
  }
}
