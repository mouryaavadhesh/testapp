import 'package:flutter/material.dart';
import 'package:testapp/presentation/styles/theme_color.dart';
import 'package:testapp/presentation/widgets/custom_text.dart';




///This class contain button for enable and disable
///Enable means it match the require condition and disable means did't satisfy all the require condition
///Color for both enable and disable are different
///It also contain on press call back

// ignore: avoid_classes_with_only_static_members
class ButtonEnableDisable {
  static Widget withMargin(String text, bool colorChange,
          {Function()? onPressed, double? fontSize, String? fontType}) =>
      Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ThemeColor.blueColorLight;
              }
              return colorChange
                  ? ThemeColor.blue_button_color
                  : ThemeColor.blueColorLight;
            }),
          ),
          onPressed: onPressed,
          child: CustomText(
            text: text,
            textAlign: TextAlign.center,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: fontSize ?? 14,
          ),
        ),
      );

  static Widget customWidth(String text, bool colorChange, double width,
          {Function()? onPressed}) =>
      Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: 48,
        width: width,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ThemeColor.blueColorLight;
              }
              return colorChange
                  ? ThemeColor.blue_button_color
                  : ThemeColor.blueColorLight;
            }),
          ),
          onPressed: onPressed,
          child: CustomText(
            text: text,
            textAlign: TextAlign.center,
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: 14.0,
          ),
        ),
      );

  static Widget withOutMargin(String text, bool colorChange,
          {Function()? onPressed, String? fontType}) =>
      SizedBox(
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
            ),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ThemeColor.blueColorLight;
              }
              return colorChange
                  ? ThemeColor.blue_button_color
                  : ThemeColor.blueColorLight;
            }),
          ),
          onPressed: onPressed,
          child: CustomText(
              text: text,
              textAlign: TextAlign.center,
              color: Colors.white,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              fontSize: 14.0),
        ),
      );

  static Widget withWhiteBackgroundAndMargin(String text, bool colorChange,
          {Function()? onPressed, double? fontSize}) =>
      Container(
        margin: const EdgeInsets.only(bottom: 20, left: 20, right: 20),
        height: 48,
        width: double.infinity,
        child: ElevatedButton(
          style: ButtonStyle(
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                side: const BorderSide(
                    color: ThemeColor.blue_button_color,
                    style: BorderStyle.solid),
                borderRadius: BorderRadius.circular(4))),
            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return ThemeColor.white_colour_eighty_percent_opacity;
              }
              return colorChange
                  ? ThemeColor.white_colour_eighty_percent_opacity
                  : ThemeColor.blueColorLight;
            }),
          ),
          onPressed: onPressed,
          child: CustomText(
            text: text,
            textAlign: TextAlign.center,
            color: ThemeColor.blue_button_color,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
            fontSize: fontSize ?? 14,
          ),
        ),
      );
}

class CustomiseButton extends StatelessWidget {
  const CustomiseButton(
      {Key? key,
      required this.text,
      required this.margin,
      required this.isButtonColourEnable,
      this.onPressed,
      this.height = 48,
      this.width = double.infinity,
      this.borderRadius = 4})
      : super(key: key);

  final String text;
  final Function()? onPressed;
  final double height;
  final double width;
  final double borderRadius;
  final bool margin;
  final bool isButtonColourEnable;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin
          ? const EdgeInsets.only(bottom: 20, left: 20, right: 20)
          : EdgeInsets.zero,
      height: 48,
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
          backgroundColor: MaterialStateProperty.resolveWith<Color>(
              (Set<MaterialState> states) {
            return isButtonColourEnable
                ? ThemeColor.blue_button_color
                : ThemeColor.blueColorLight;
          }),
        ),
        onPressed: onPressed,
        child: CustomText(
          text: text,
          textAlign: TextAlign.center,
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.normal,
          fontSize: 14.0,
        ),
      ),
    );
  }
}
