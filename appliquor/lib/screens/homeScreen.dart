import 'package:appviajesflutter/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HScreem extends StatefulWidget {
  HScreem({Key key}) : super(key: key);

  @override
  _HScreemState createState() => _HScreemState();
}

class _HScreemState extends State<HScreem> {
  int _selectedIndex = 0;//Variable seleccion de indexe
  List<IconData> _icons = [
    //creo una lista deIconos
    FontAwesomeIcons.wineBottle,
    FontAwesomeIcons.glassWhiskey,
    FontAwesomeIcons.beer,
    FontAwesomeIcons.smoking,
    FontAwesomeIcons.candyCane,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
        padding: EdgeInsets.symmetric(vertical: 40.0),
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text("Que te gustaria pedir",
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
          ),
          SizedBox(height: 20.0), //muestro elcontainer
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _builIcon(0),
              _builIcon(1),
              _builIcon(2),
              _builIcon(3),
              _builIcon(4),
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Carousel()),




        ],
      )),
    );
  }

//widgetfuncion un container
  Widget _builIcon(int index) {
    return GestureDetector(  //Widget detecor de gestos
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
        print(_selectedIndex);
      },
      child: Container(
          //retorna un containers
          height: 50.0,
          width: 70.0,
          decoration: BoxDecoration(
              //Solo selecciona el color cuando se daclick
              color: _selectedIndex == index
                  ? Theme.of(context).accentColor
                  : Color(0xFFD8DFE4),
              borderRadius: BorderRadius.circular(20.0)),
          child: Icon(_icons[index],
              size: 25.0,
              color: _selectedIndex == index
                  ? Theme.of(context).primaryColor
                  : Color(0xFF373F41))),
    ); //acceder a cadaicono
  }
}
