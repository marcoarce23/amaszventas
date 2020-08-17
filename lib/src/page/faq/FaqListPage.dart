import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_match/src/model/util/Const.dart';
import 'package:virtual_match/src/page/general/ViewPage.dart';
import 'package:virtual_match/src/page/home/HomePage.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/appBar/AppBarWidget.dart';
import 'package:virtual_match/src/widget/drawer/DrawerWidget.dart';
import 'package:virtual_match/src/widget/general/GeneralWidget.dart';
import 'package:virtual_match/src/widget/gfWidget/GfWidget.dart';

class FaqListPage extends StatefulWidget {
  FaqListPage({Key key}) : super(key: key);

  @override
  _FaqListPagetate createState() => _FaqListPagetate();
}

class _FaqListPagetate extends State<FaqListPage> {
  File photo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar('PREGUNTAS FRECUENTES'),
      drawer: DrawerMenu(),
      body: Stack(
        children: <Widget>[
          _form(context),
        ],
      ),
      floatingActionButton: floatButton(AppTheme.themeDefault, context,
          FaIcon(FontAwesomeIcons.plane), HomePage()),
    );
  }

  Widget _form(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          sizedBox(0.0, 15.0),
          Container(
            width: size.width * 0.96,
            margin: EdgeInsets.symmetric(vertical: 0.0),
            decoration: containerImage(),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[],
            ),
          ),
          Container(
            width: size.width * 0.96,
            margin: EdgeInsets.symmetric(vertical: 0.0),
            child: _fields(context),
          ),
          copyRigth(),
        ],
      ),
    );
  }

  Widget _fields(BuildContext context) {
    return Column(
      children: <Widget>[
        sizedBox(0.0, 0.0),
        showInformation(context, 'TIENES CONSULTAS ?',
            'Acá te respondemos las preguntas más comunes sobre AmaszVentas y nuestra APP y nuestra aplicación movil.'),
        listAcordion(),
        listAcordion2(),
        listAcordion3(),
        listAcordion4(),
      ],
    );
  }

  Widget listAcordion() {
    return accordion(
        '¿Cómo comprar con la APP AmaszVentas?',
        'Amaszonas junto a los Operadores de Turismo más reconocidos en Bolivia, te brindamos la oportunidad de vivir una experiencia de viaje de turismo con un precio iniguablable.',
         AppTheme.themeGrey,
        AppTheme.themeDefault);
  }

  Widget listAcordion2() {
    return accordion(
        '¿Cómo vender con la APP AmaszVentas?',
        'Amaszonas junto a los Operadores de Turismo más reconocidos en Bolivia, te brindamos la oportunidad de vivir una experiencia de viaje de turismo con un precio iniguablable.',
        AppTheme.themeGrey,
        AppTheme.themeDefault);
  }

  Widget listAcordion3() {
    return accordion(
        '¿Es una plataforma segura AmaszVentas?',
        'Amaszonas junto a los Operadores de Turismo más reconocidos en Bolivia, te brindamos la oportunidad de vivir una experiencia de viaje de turismo con un precio iniguablable.',
        AppTheme.themeGrey,
        AppTheme.themeDefault);
  }

  Widget listAcordion4() {
    return accordion(
        '¿Recomendaciones para el correcto uso de la APP?',
        'Amaszonas junto a los Operadores de Turismo más reconocidos en Bolivia, te brindamos la oportunidad de vivir una experiencia de viaje de turismo con un precio iniguablable.',
        AppTheme.themeGrey,
        AppTheme.themeDefault);
  }
}
