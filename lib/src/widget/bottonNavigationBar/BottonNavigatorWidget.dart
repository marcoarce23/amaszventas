import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:virtual_match/src/model/util/Const.dart';
import 'package:virtual_match/src/page/core/tourment/ListTournamentPage.dart';
import 'package:virtual_match/src/page/event/EventLoadPage.dart';
import 'package:virtual_match/src/page/faq/FaqListPage.dart';
import 'package:virtual_match/src/page/new/NewLoadPage.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/general/GeneralWidget.dart';
import 'package:virtual_match/src/widget/image/imageOvalWidget.dart';

class BottonNavigation extends StatefulWidget {
  BottonNavigation({Key key}) : super(key: key);

  @override
  _BottonNavigationState createState() => _BottonNavigationState();
}

class _BottonNavigationState extends State<BottonNavigation> {
  @override
  Widget build(BuildContext context) {
    return ConvexAppBar.badge(
      {0: '99+', 1: Icons.assistant_photo, 2: Colors.redAccent},

      backgroundColor: AppTheme.themeGrey,
      style: TabStyle.reactCircle,
      elevation: 3.0,
      items: [
        TabItem(
            icon: ImageOvalNetwork(
                imageNetworkUrl: IMAGE_LOGO, sizeImage: Size.fromWidth(50)),
            title: 'Promoción'),
        TabItem(
            icon: ImageOvalNetwork(
                imageNetworkUrl: IMAGE_LOGO, sizeImage: Size.fromWidth(50)),
            title: 'Venta'),
        TabItem(
            icon: ImageOvalNetwork(
                imageNetworkUrl: IMAGE_LOGO, sizeImage: Size.fromWidth(50)),
            title: 'Compra',
            isIconBlend: false),
        TabItem(
            icon: ImageOvalNetwork(
                imageNetworkUrl: IMAGE_LOGO, sizeImage: Size.fromWidth(50)),
            title: 'Promotor'),
        TabItem(
            icon: ImageOvalNetwork(
                imageNetworkUrl: IMAGE_LOGO, sizeImage: Size.fromWidth(50)),
            title: 'Itinerario'),
      ],
      initialActiveIndex: 2, //optional, default as 0
      onTap: (value) {
        setState(() {
          if (value == 0) navegation(context, FaqListPage());
          if (value == 1) navegation(context, FaqListPage());
          if (value == 2) navegation(context, FaqListPage());
          if (value == 3) navegation(context, FaqListPage());
          if (value == 4) navegation(context, FaqListPage());
        });
      },
    );
  }
}
