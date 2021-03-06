import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:virtual_match/src/page/faq/FaqListPage.dart';
import 'package:virtual_match/src/page/home/CircularMenuPage.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/general/GeneralWidget.dart';

class CircularMenu extends StatefulWidget {
  CircularMenu({Key key}) : super(key: key);

  @override
  _CircularMenuState createState() => _CircularMenuState();
}

class _CircularMenuState extends State<CircularMenu> {
  File _imageFile;
  final GlobalKey<FabCircularMenuState> fabKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) => FabCircularMenu(
        key: fabKey,
        // Cannot be `Alignment.center`
        alignment: Alignment.bottomRight,
        ringColor: Colors.white.withAlpha(25),
        ringDiameter: 500.0,
        ringWidth: 150.0,
        fabSize: 64.0,
        fabElevation: 8.0,
        fabColor: AppTheme.themeWhite,
        fabOpenIcon: Icon(Icons.menu, color: AppTheme.themeDefault),
        fabCloseIcon: Icon(Icons.close, color: AppTheme.themeDefault),
        fabMargin: const EdgeInsets.all(16.0),
        animationDuration: const Duration(milliseconds: 800),
        animationCurve: Curves.easeInCubic,
        onDisplayChange: (isOpen) {
          _showSnackBar(
              context, "Menu AmaszVentas ${isOpen ? "abierto" : "cerrado"}");
        },
        children: <Widget>[
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "Selecciono  1");
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: FaIcon(FontAwesomeIcons.plane,
                color: AppTheme.themeDefault, size: 25.0),
          ),
          RawMaterialButton(
            onPressed: () async {
              _imageFile = (await ImagePicker()
                  .getImage(source: ImageSource.gallery)) as File;
              setState(() {});
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: FaIcon(FontAwesomeIcons.images,
                color: AppTheme.themeDefault, size: 25.0),
          ),
          RawMaterialButton(
            onPressed: () {
              navegation(context, FaqListPage());
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: FaIcon(FontAwesomeIcons.youtube,
                color: AppTheme.themeDefault, size: 25.0),
          ),
          RawMaterialButton(
            onPressed: () {
              navegation(context, FaqListPage());
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: FaIcon(FontAwesomeIcons.questionCircle,
                color: AppTheme.themeDefault, size: 25.0),
          ),
          RawMaterialButton(
            onPressed: () {
              _showSnackBar(context, "Selecciono Cerrar Menu AmaszVentas");
              fabKey.currentState.close();
            },
            shape: CircleBorder(),
            padding: const EdgeInsets.all(24.0),
            child: FaIcon(FontAwesomeIcons.home,
                color: AppTheme.themeDefault, size: 25.0),
          )
        ],
      ),
    );
  }

  void _showSnackBar(BuildContext context, String message) {
    Scaffold.of(context).showSnackBar(SnackBar(
      content: Text(message),
      duration: const Duration(milliseconds: 1000),
      backgroundColor: AppTheme.themeDefault,
    ));
  }
}
