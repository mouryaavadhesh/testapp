import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:testapp/presentation/styles/text_styling.dart';
import 'package:testapp/presentation/styles/theme_color.dart';
import 'package:testapp/presentation/template/text.dart';

class ReusableWidget {

  static toastMsg(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_SHORT,
        //gravity: ToastGravity.BOTTOM,
        fontSize: 16.0);
  }

  static toastMsgInternet(BuildContext context) {
    Fluttertoast.showToast(
        msg: 'Currently connected to no network. Please connect to a network!',
        toastLength: Toast.LENGTH_SHORT,
        //gravity: ToastGravity.BOTTOM,
        fontSize: 16.0);
  }

  static toastMsgLong(String msg) {
    Fluttertoast.showToast(
        msg: msg,
        toastLength: Toast.LENGTH_LONG,
        //gravity: ToastGravity.BOTTOM,
        fontSize: 16.0);
  }

  static Container rectangleLayout(String _image) => Container(
        width: 38,
        margin: const EdgeInsets.fromLTRB(20, 30, 0, 0),
        height: 38,
        child: SvgPicture.asset(_image),
      );

  static Widget animationLayout(Animation gradientPosition, double width) {
    return Card(
      margin: const EdgeInsets.only(top: 10.0, bottom: 10.0,left: 16,right: 16),
      child: Column(
        children: <Widget>[
          Container(
            width: width,
            height: 150,
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 150,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 200,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 250,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: width,
            height: 150,
            margin: const EdgeInsets.only(top: 20),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 50,
                    height: 50,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 150,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 200,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
                Align(
                  alignment: FractionalOffset.topLeft,
                  child: Container(
                    width: 250,
                    height: 20,
                    margin: const EdgeInsets.only(left: 10, right: 10, top: 5),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment(gradientPosition.value, 0),
                            end: const Alignment(-1, 0),
                            colors: const [
                          Colors.black12,
                          Colors.black26,
                          Colors.black12
                        ])),
                    child: const Text(''),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  static Container text(String _text) {
    Container containerForText = Container(
      margin: const EdgeInsets.fromLTRB(20, 15, 0, 20),
      child: Text(
        _text,
        textAlign: TextAlign.start,
        style: TextStyling1.mobileNumber(),
      ),
    );
    return containerForText;
  }

  Widget headerAuth(BuildContext context, String text) => Container(
        height: 280,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 30,
              width: 80,
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/light-1.png'))),
              ),
            ),
            Positioned(
              left: 140,
              width: 80,
              height: 100,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/light-2.png'))),
              ),
            ),
            Positioned(
              right: 40,
              top: 40,
              width: 80,
              height: 100,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/clock.png'))),
              ),
            ),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )),
          ],
        ),
      );

  Widget headerAuthCustomHeight(
          BuildContext context, String text, double height) =>
      Container(
        height: height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/background.png'),
                fit: BoxFit.fill)),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 30,
              width: 80,
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/light-1.png'))),
              ),
            ),
            Positioned(
              left: 140,
              width: 80,
              height: 100,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/light-2.png'))),
              ),
            ),
            Positioned(
              right: 40,
              top: 40,
              width: 80,
              height: 100,
              child: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/clock.png'))),
              ),
            ),
            Positioned(
                child: Container(
              margin: const EdgeInsets.only(top: 50),
              child: Center(
                child: Text(
                  text,
                  style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            )),
          ],
        ),
      );

  Widget verifyButton(
      BuildContext context, String text, bool clickable, bool clicked,
      {required Function callBack}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)),
        //  backgroundColor: clickable ? ThemeColor.green : ThemeColor.gray,
        ),
        onPressed: clickable
            ? clicked
                ? null
                : () {
                    callBack();
                  }
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: clicked,
              child: Container(
                alignment: Alignment.center,
                height: 25,
                width: 25,
                child: const CircularProgressIndicator(
                  backgroundColor: ThemeColor.light_blue_button_color,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      ThemeColor.blue_button_color),
                  strokeWidth: 3,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: clicked ? 20 : 0),
              child:MyText.textInterSemiBold(text:   text, fontSize: 14),
            ),
          ],
        ));
  }

  Widget verifyButton1(
      BuildContext context, String text, bool clickable, bool clicked,
      {required Function callBack}) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24)),
         // backgroundColor: clickable ? ThemeColor.green : ThemeColor.gray,
        //  disabledForegroundColor: ThemeColor.gray,
        ),
        onPressed: clickable
            ? clicked
                ? null
                : () {
                    callBack();
                  }
            : null,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Visibility(
              visible: clicked,
              child: Container(
                alignment: Alignment.center,
                height: 25,
                width: 25,
                child: const CircularProgressIndicator(
                  backgroundColor: ThemeColor.light_blue_button_color,
                  valueColor: AlwaysStoppedAnimation<Color>(
                      ThemeColor.blue_button_color),
                  strokeWidth: 3,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              margin: EdgeInsets.only(left: clicked ? 20 : 0),
              child:MyText.textInterSemiBold(text:   text, fontSize: 14),
            ),
          ],
        ));
  }

  Widget companyName(String cName) {
    if (cName.isNotEmpty) {
      return Container(
        margin: const EdgeInsets.only(right: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Flexible(
              child: Text(
                /* (cName.length > 15) ? cName.substring(0, 13) + '..' :*/
                cName,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyling1.mobileNumber(),
                textAlign: TextAlign.left,
              ),
            ),
            /* Container(
                  margin: const EdgeInsets.only(top: 5),
                  child: SvgPicture.asset(
                    "assets/images/verified_shield.svg",
                  ),
                ),*/
          ],
        ),
      );
    } else {
      return const Text('');
    }
  }

  Widget actionButton(
    String text, {
    required Function callBack,
  }) =>
      InkWell(
        onTap: () {
          callBack();
        },
        child: Container(
          alignment: Alignment.center,
          margin: const EdgeInsets.only(right: 10),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              border: Border.all(
                color: Colors.grey.shade300, // Border color
                width: 2.0, // Border width
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
              ),
          child: MyText.textInterMedium(text: text, fontSize: 14),
        ),
      );
}
