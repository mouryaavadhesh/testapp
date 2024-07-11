import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:testapp/presentation/styles/theme_color.dart';

class Dialogs {
  static Future<void> showLoadingDialog(BuildContext context) async {
    return showDialog<void>(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return PopScope(
            canPop: true,
            onPopInvoked: (value) {
              Future.value(true);
            },
            child: Material(
                color: Colors.transparent,
                child: Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const CircularProgressIndicator(
                          backgroundColor: ThemeColor.blue_button_color,
                          valueColor: AlwaysStoppedAnimation<Color>(
                              ThemeColor.blue_button_color),
                          strokeWidth: 3,
                        ),
                        const SizedBox(
                          height: 7,
                        ),
                        Text(
                          'Please Wait....',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                            textStyle: const TextStyle(
                                color: Colors.blue, letterSpacing: .5),
                          ),
                        )
                      ]),
                )),
          );
        });
  }
}
