import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  SliderPage({Key key}) : super(key: key);

  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double _valorSlider = 250.0;
  bool _bloquearCheck = false;
  bool _bloquearSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 50.0),
        child: Column(
          children: <Widget>[
            _crearSlider(),
            Divider(),
            _crearCheck(),
            Divider(),
            _crarSwitch(),
            Divider(),
            _crearImagen(),
          ],
        ),
      ),
    );
  }

  Widget _crearSlider() {
    return Slider(
      activeColor: Colors.indigoAccent,
      label: 'Tamaño de imagen',
      //divisions: 20,
      value: _valorSlider,
      min: 0.0,
      max: 500.0,
      onChanged: (!_bloquearSwitch)
          ? null
          : (valor) {
              setState(() {
                _valorSlider = valor;
              });
            },
    );
  }

  Widget _crearCheck() {
    /* return Checkbox(
      value: _bloquearCheck,
      onChanged: (valor){
        setState(() {
                  _bloquearCheck =  valor;
                });
      },
    ); */

    return CheckboxListTile(
      title: Text('Bloquear Slider'),
      value: _bloquearCheck,
      onChanged: (valor) {
        setState(() {
          _bloquearCheck = valor;
        });
      },
    );
  }

  Widget _crearImagen() {
    return Image(
      image: NetworkImage(
          'https://i.pinimg.com/originals/46/81/c8/4681c895f23dd102ddf8806732efd55d.jpg'),
      width: _valorSlider,
      fit: BoxFit.contain,
    );
  }

  Widget _crarSwitch() {
    return SwitchListTile(
      title: Text('Habilitar Slider'),
      value: _bloquearSwitch,
      onChanged: (valor) {
        setState(() {
          _bloquearSwitch = valor;
        });
      },
    );
  }
}
