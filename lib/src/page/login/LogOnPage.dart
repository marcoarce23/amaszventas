import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:getwidget/components/button/gf_button.dart';
import 'package:getwidget/shape/gf_button_shape.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:virtual_match/src/page/general/ViewPage.dart';
import 'package:virtual_match/src/page/intro/IntroPage.dart';
import 'package:virtual_match/src/page/login/LoginClipperPage.dart';
import 'package:virtual_match/src/service/LogInService.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/general/CallWidget.dart';
import 'package:virtual_match/src/widget/general/GeneralWidget.dart';
import 'package:virtual_match/src/widget/general/SenWidget.dart';
import 'package:page_transition/page_transition.dart';
import 'package:virtual_match/src/model/util/Const.dart';

class LogOnPage extends StatefulWidget {
  @override
  _LogOnPageState createState() => _LogOnPageState();
}

class _LogOnPageState extends State<LogOnPage> {
  LoginService loginService;

  @override
  Widget build(BuildContext context) {
    loginService = Provider.of<LoginService>(context);

    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(),
            Image.asset(
              "assets/image/babycare1.jpg",
              fit: BoxFit.cover,
              height: size.height * 0.70,
              width: size.width,
            ),
            Positioned(
              bottom: 0,
              child: ClipPath(
                clipper: LoginCustomClipper(),
                child: _buttonsSignUp(size, context),
              ),
            )
          ],
        ),
      ),
    );
  }

  Container _buttonsSignUp(Size size, BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 80),
      height: size.height * 0.5,
      width: size.width,
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Shimmer.fromColors(
            baseColor: AppTheme.themeDefault,
            highlightColor: AppTheme.themeRed,
            child: AutoSizeText(
              'Bienvenido a AMASVENTAS',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          _button(context, 'Iniciar con tu cuenta', 18.0, 20.0),
          _gmailButton(),
          _crearAcciones(context),
          sizedBox(0.0, 8.0),
          _egree(context),
          copyRigth(),
        ],
      ),
    );
  }

  Widget _gmailButton() {
    return OutlineButton(
      splashColor: Colors.black,
      onPressed: () {}, // handleSignIn, // _handleSignIn,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
      highlightElevation: 0,
      borderSide: BorderSide(color: Colors.black),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image(
                image: AssetImage("assets/general/google_logo.png"),
                height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text(
                'Iniciar con Google',
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            )
          ],
        ),
      ),
    );
  }

  Row _crearAcciones(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Colors.blueAccent,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () => navegation(
                context,
                ViewPage(
                    title: 'FACEBOOK AMASZONAS'.toString(), url: facebook)),
            child: Icon(
              FontAwesomeIcons.facebookF,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        sizedBox(10, 0),
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Colors.red,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () => navegation(
                context,
                ViewPage(
                    title: 'INSTAGRAM AMASZONAS'.toString(), url: instagram)),
            child: Icon(
              FontAwesomeIcons.instagram,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        sizedBox(10, 0),
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Colors.lightBlueAccent,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () => navegation(
                context,
                ViewPage(
                    title: 'TWITTER AMASZONAS'.toString(), url: instagram)),
            child: Icon(
              FontAwesomeIcons.twitter,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
        sizedBox(10, 0),
        SizedBox(
          width: 40,
          height: 40,
          child: RaisedButton(
            color: Colors.blue,
            padding: EdgeInsets.all(0),
            shape: CircleBorder(),
            onPressed: () => navegation(context,
                ViewPage(title: 'LINKDIN AMASZONAS'.toString(), url: linkDin)),
            child: Icon(
              FontAwesomeIcons.linkedinIn,
              color: Colors.white,
              size: 20,
            ),
          ),
        ),
      ],
    );
  }

  _egree(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(
            child: Text(
              'Política de Privacidad',
              style: TextStyle(
                color: AppTheme.themeDefault,
                fontSize: 14.0,
              ),
            ),
            onPressed: () => Navigator.push(
              context,
              PageTransition(
                curve: Curves.bounceOut,
                type: PageTransitionType.rotate,
                alignment: Alignment.topCenter,
                child: ViewPage(
                    title: 'Políticas de Privacidad',
                    url:
                        'https://www.virtual_match.bo/politicas-de-privacidad'),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _button(
      BuildContext context, String text, double fontSize, double edgeInsets) {
    return GFButton(
      padding: EdgeInsets.symmetric(horizontal: edgeInsets),
      text: text,
      textStyle: TextStyle(fontSize: fontSize, color: AppTheme.themeWhite),
      textColor: AppTheme.themeWhite,
      color: AppTheme.themeDefault,

      // icon: Shimmer.fromColors(
      //   baseColor: AppTheme.themeGrey,
      //   highlightColor: AppTheme.themeWhite,
      //   child: FaIcon(FontAwesomeIcons.playstation,
      //       color: AppTheme.themeDefault, size: 28.0),
      // ),
      shape: GFButtonShape.pills,
      onPressed: () => navegation(context, IntroPage()),
    );
  }
}
