import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Page'),
      ),
      body: ListView(
        children: <Widget>[
          _cardt1(),
          SizedBox(
            height: 30,
          ),
          _cardt2(),
          SizedBox(
            height: 30,
          ),
          _cardt3(),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }

  Widget _cardt1() {
    return Card(
      child: Column(
        children: <Widget>[
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/imagen.jpg'),
              radius: 30,
            ),
            title: Text('Jesus Joel Aviles Bermudez'),
            subtitle: Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
          ),
          Row(
            children: <Widget>[
              FlatButton(
                child: Text('Aceptar'),
                onPressed: () {},
              ),
              FlatButton(
                child: Text('Cancelar'),
                onPressed: () {},
              )
            ],
          )
        ],
      ),
    );
  }

  Widget _cardt2() {
    final card = Container(
      child: Column(children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/02/24/09/51/magical-6046019_960_720.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 200.0,
          fit: BoxFit.cover,
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text('descripcion'),
        )
      ]),
    );

    return Container(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: card,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              spreadRadius: 2,
              offset: Offset(2.0, 10.0))
        ],
        color: Colors.white,
      ),
      margin: EdgeInsets.only(left: 5.0, right: 5.0),
    );
  }
}

Widget _cardt3() {
  final card = Container(
    child: Column(
      children: <Widget>[
        header(),
        Container(
          padding: EdgeInsets.all(5.0),
          child: Text(
            'Equipo trifuerza',
            style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
          ),
        ),
        Container(
          padding: EdgeInsets.all(10.0),
          child: Text(
              'Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit'),
        ),
      ],
      mainAxisAlignment: MainAxisAlignment.center,
    ),
  );

  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: card,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2.0, 10.0))
      ],
      color: Colors.white,
    ),
    margin: EdgeInsets.only(left: 5.0, right: 5.0),
  );
}

Widget header() {
  return Container(
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        FadeInImage(
          placeholder: AssetImage('assets/jar-loading.gif'),
          image: NetworkImage(
              'https://cdn.pixabay.com/photo/2021/01/15/17/01/green-5919790_960_720.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300.0,
          fit: BoxFit.cover,
        ),
        Positioned(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/imagen.jpg'),
            radius: 80,
          ),
          top: 225,
        ),
      ],
    ),
    height: 390.0,
  );
}
