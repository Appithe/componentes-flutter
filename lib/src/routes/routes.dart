import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/avatar_page.dart';
import 'package:componentes/src/pages/card_page.dart';
import 'package:componentes/src/pages/home_page.dart';
import 'package:componentes/src/pages/input_page.dart';
import 'package:componentes/src/pages/inputsYanimaciones.dart';
import 'package:componentes/src/pages/practica.dart';
import 'package:componentes/src/pages/sliderPage.dart';
import 'package:flutter/material.dart';

Map <String, WidgetBuilder> getAplicationRoutes(){
  return <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert' : (BuildContext context) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage(),
        'card': (BuildContext context) => CardPage(),
        'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
        'inputs': (BuildContext context) => InputPage(),
        'inputsYanimaciones' : (BuildContext context) => InputYAnimacionesPage(),
        'slider':(BuildContext context) => SliderPage(),
        'sliderTwo': (BuildContext context) => SliderTwo()
      };
  }