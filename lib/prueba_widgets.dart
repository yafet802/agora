import 'package:agora/pantalla_lugar/aglomeracion_actual.dart';
import 'package:flutter/material.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rounded Expansion Tile Demo'),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        children: [
          Card(
            elevation: 0,
            color: Colors.white,
            child: RoundedExpansionTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              title: Text('BorderRadius.circular(4)'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          Divider(height: 20),
          Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            child: RoundedExpansionTile(
              
              duration: Duration(milliseconds: 250),
              leading: Icon(Icons.person),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8)),
              title: Text('BorderRadius.circular(8)'),
              subtitle: Text('In card'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
          Divider(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 0, horizontal: 80),
            child: Card(
              elevation: 5.0,
              color: Colors.white,
              shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
              child: RoundedExpansionTile(
                focusColor: Colors.white,
                duration: Duration(milliseconds: 250),
                leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                  child: Container(width: 45.0, height: 45.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                    child: Material(
                      borderRadius: BorderRadius.circular(50.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(image: AssetImage('img/formatoLugarImagen/CoppelCaminoDelSeri.png'))
                    ),
                  ),
                ),
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
                title: Padding(
                  padding: EdgeInsets.all(17.0),
                  child: Text('Cum (Centro de Usos Multiples)', style: TextStyle(fontFamily: 'Poppins', color: Colors.black)),
                ),
                trailing: Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(244, 89, 34, 1)),
                rotateTrailing: true,
                children: [
                  Padding(padding: const EdgeInsets.only(top: 16.0, bottom: 24.0),
                    child: AglomeracionActual(aglomeracionTipo: 'AglomeracionBaja'),
                  ),
                  Container(width: 238.0, height: 47.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.0),
                      border: Border.all(width: 1.5, color: Color.fromRGBO(244, 89, 34, 1))
                    ),
                  )
                ],
              ),
            ),
          ),
          Divider(height: 20),
          Card(
            elevation: 0,
            color: Colors.white,
            child: RoundedExpansionTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
              title: Text('BorderRadius.circular(4)'),
              children: [
                for (var i = 0; i < 5; i++)
                  ListTile(
                    title: Text('Child $i'),
                  )
              ],
            ),
          ),
        ],
      )
    );
  }
}