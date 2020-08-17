import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:virtual_match/src/model/util/Const.dart';
import 'package:virtual_match/src/page/general/ViewPage.dart';
import 'package:virtual_match/src/page/home/HomePage.dart';
import 'package:virtual_match/src/theme/Theme.dart';
import 'package:virtual_match/src/widget/appBar/AppBarWidget.dart';
import 'package:virtual_match/src/widget/drawer/DrawerWidget.dart';
import 'package:virtual_match/src/widget/general/CallWidget.dart';
import 'package:virtual_match/src/widget/general/GeneralWidget.dart';
import 'package:virtual_match/src/widget/general/SenWidget.dart';

class OrganizationPage extends StatefulWidget {
  OrganizationPage({Key key}) : super(key: key);

  @override
  _OrganizationPageState createState() => _OrganizationPageState();
}

class _OrganizationPageState extends State<OrganizationPage> {
  final estiloTitulo = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubTitulo = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar('CONOCE LA COMUNIDAD'),
        drawer: DrawerMenu(),
        floatingActionButton: floatButton(AppTheme.themeDefault, context,
            FaIcon(FontAwesomeIcons.plane), HomePage()),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _crearImagen(context),
              _crearTitulo(),
              _crearAcciones(context),
              divider(),
              _crearTexto(),
              sizedBox(0, 10),
              _crearTexto1(),
              sizedBox(0, 10),
              _crearTexto2(),
              sizedBox(0, 10),
              _crearTexto3(),
              sizedBox(0, 10),
              _crearTexto4(),
              copyRigth()
            ],
          ),
        ));
  }

  Widget _crearImagen(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(IMAGE_ORGANIZATION),
          height: 180.0,
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  Widget _crearTitulo() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('En Amaszonas cuidamos de los nuestros.',
                      style: TextStyle(
                          color: AppTheme.themeDefault,
                          fontSize: 20,
                          fontWeight: FontWeight.bold)),
                  // Text('Terrasur, haciendo tus sueños realidad',
                  //     style: estiloTitulo),
                  sizedBox(0, 7.0),
                  //Text('Fecha: XXXXX', style: estiloSubTitulo ),
                ],
              ),
            ),
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

  Widget _crearTexto() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Somos la aerolínea integradora de Sud América, reconocida por su alta calidad de servicio, posicionando a Bolivia como distribuidor de tráfico regional.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearTexto1() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Generamos una experiencia de viaje cálida, puntual y transparente, con sostenibilidad y amor.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearTexto0() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            Text(
              '1 Vs 1',
              textAlign: TextAlign.justify,
            ),
            Text(
              '2 Vs 2',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Torneos presenciales ',
              textAlign: TextAlign.justify,
            ),
            Text(
              'Clubes Pro',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }

  Widget _crearTexto2() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Servicio de Transporte Aéreo. Este operador se encuentra regulado y fiscalizado por la ATT.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearTexto3() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          '¡CONOCE NUESTRO ITINERARIO!',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _crearTexto4() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0),
        child: Text(
          'Vuela tranquilo y seguro con los más altos estándares internacionales de Bioseguridad. #SoñemosJuntos',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
