import 'package:flutter/material.dart';

class SliderTwo extends StatefulWidget {
  SliderTwo({Key key}) : super(key: key);

  @override
  _SliderTwoState createState() => _SliderTwoState();
}

class _SliderTwoState extends State<SliderTwo> {
  double _valorSliderWidth = 200.0;
  double _valorSliderHeight = 300.0;
  bool _bloquearSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Segundo Slider'),
      ),
      body: Column(
        children: <Widget>[
          Text('Ancho'),
          _crearSliderWidth(),
          Divider(),
          Text('Alto'),
          _crearSliderHeight(),
          Divider(),
          _crarSwitch(),
          Divider(),
          _crearImagen(),
        ],
      ),
    );
  }

  Widget _crearSliderWidth() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _valorSliderWidth,
      min: 0.0,
      max: 200.0,
      onChanged: (!_bloquearSwitch)
          ? null
          : (valor) {
              setState(() {
                _valorSliderWidth = valor;
              });
            },
    );
  }

  Widget _crearSliderHeight() {
    return Slider(
      activeColor: Colors.indigoAccent,
      value: _valorSliderHeight,
      min: 0.0,
      max: 300.0,
      onChanged: (!_bloquearSwitch)
          ? null
          : (valor) {
              setState(() {
                _valorSliderHeight = valor;
              });
            },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage('https://picsum.photos/200/300.jpg'),
      width: _valorSliderWidth,
      height: _valorSliderHeight,
      fit: BoxFit.none,
    );
  }

  Widget _crarSwitch() {
    return SwitchListTile(
      title: Text('Habilitar Sliders'),
      value: _bloquearSwitch,
      onChanged: (valor) {
        setState(() {
          _bloquearSwitch = valor;
        });
      },
    );
  }
}
