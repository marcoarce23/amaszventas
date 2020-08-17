import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_match/src/model/util/Const.dart';
import 'package:virtual_match/src/style/Style.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/gfWidget/GfWidget.dart';

AppBar appBar(String title) {
  return AppBar(
    backgroundColor: AppTheme.themeGrey,
    //toolbarOpacity: 0.7,
    iconTheme: IconThemeData(color: AppTheme.themeWhite, size: 12),
    elevation: 2.0,
    title: Text(title, style: kTitleAppBar),
    actions: <Widget>[
      // avatarCircle(IMAGE_LOGO, 25.0),
      FaIcon(
        FontAwesomeIcons.shareAlt,
        color: AppTheme.themeWhite,
        size: 30,
      ),
    ],
  );
}
