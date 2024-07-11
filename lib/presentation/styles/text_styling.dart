import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/presentation/styles/font_type.dart';
import 'package:testapp/presentation/styles/theme_color.dart';


abstract class TextStyling1 {
  static TextStyle buttonStyleBlack() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle mobileNumber() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle text12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 12,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle text() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textBold12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontFamily: FontType.InterBold,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle textBold14() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle textBold16() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle textBold18() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle textBold20() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle textSemiBold12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textSemiBold14() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textSemiBold16() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textSemiBold18() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textSemiBold20() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textMedium12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textMedium14() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textMedium16() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textMedium8() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textMedium20() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle textNormal12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle textNormal14() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle textNormalBold16() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 16,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle textNormal18() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle textNormal20() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 20,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle buttonText() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle labelText() => GoogleFonts.lato(
        textStyle: const TextStyle(
            color: ThemeColor.grayDark,
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle errorStyle() => GoogleFonts.lato(
        textStyle:
            const TextStyle(color: Colors.red, letterSpacing: .5, fontSize: 14),
      );

  static TextStyle hintStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            color: ThemeColor.grayDark,
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle logoutStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            color: Colors.red,
            letterSpacing: .5,
            fontSize: 18,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w700),
      );

  static TextStyle otpSentToNumber() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle richText(Color colors) => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle richTextBlue() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            color: ThemeColor.blue_button_color,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle textStyleBlackColour() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle regularTextStyle(bool textColour) => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle regularTextBlackStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w400),
      );

  static TextStyle totalBill() => GoogleFonts.lato(
        textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.grey.shade500,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle menuPriceStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle orderNumber() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 12,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle dateTimeStyle() => GoogleFonts.lato(
        textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: 12,
            color: Colors.grey.shade500,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle menuNameStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle orderTypeStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.grey,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle errorMsgNameStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle errorMsgStyle() => GoogleFonts.lato(
        textStyle: TextStyle(
            letterSpacing: .5,
            fontSize: 12,
            color: Colors.grey.shade500,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle totalAmountStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w600),
      );

  static TextStyle drawerMenuStyle() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.black,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle subHeadingMediumGray12() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 12,
            color: Colors.grey,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );

  static TextStyle subHeadingMediumGray14() => GoogleFonts.lato(
        textStyle: const TextStyle(
            letterSpacing: .5,
            fontSize: 14,
            color: Colors.grey,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.w500),
      );
}
