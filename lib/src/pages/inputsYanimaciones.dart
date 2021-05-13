import 'dart:math';

import 'package:flutter/material.dart';

class InputYAnimacionesPage extends StatefulWidget {
  InputYAnimacionesPage({Key key}) : super(key: key);

  @override
  _InputYAnimacionesPageState createState() => _InputYAnimacionesPageState();
}

class _InputYAnimacionesPageState extends State<InputYAnimacionesPage> {
  int contador = 0;
  String _cadena;
  bool esCuadrado = true;
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.cyan;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(10.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Practica'),
      ),
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: _input(),
              alignment: AlignmentDirectional.topCenter,
            ),
            _figura()
          ],
        ),
      ),
    );
  }

  Widget _input() {
    return TextField(
      autofocus: true,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Nombre Completo',
        labelText: 'Nombre',
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (value) {
        final random = Random();

        _cadena = value;

        int r = random.nextInt(255);
        int g = random.nextInt(255);
        int b = random.nextInt(255);

        setState(() {
          if (esCuadrado) {
            _width = random.nextInt(200).toDouble();
            _heigth = random.nextInt(200).toDouble();
            _color = Color.fromRGBO(r, g, b, 1);
            _borderRadius =
                BorderRadius.circular(random.nextInt(100).toDouble());
            if (_cadena.length == 10) {
              esCuadrado = false;
              contador = 0;
            }
          } else {
            _width = random.nextInt(100).toDouble();
            _heigth = 100.0;
            _borderRadius = BorderRadius.circular(180.0);
            contador++;
            if (contador == 10) {
              esCuadrado = true;
            }
          }
        });
      },
    );
  }

  Widget _figura() {
    return AnimatedContainer(
      width: _width,
      height: _heigth,
      decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
      duration: Duration(milliseconds: 800),
      curve: Curves.easeInCubic,
    );
  }
}
