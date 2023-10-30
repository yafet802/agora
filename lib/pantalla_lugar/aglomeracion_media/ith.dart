import 'package:flutter/material.dart';
import 'package:agora/pantalla_lugar/aglomeracion_actual.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros.dart';


class LugarITH extends StatefulWidget {
  const LugarITH({super.key});

  @override
  State<LugarITH> createState() => _LugarITHState();
}

class _LugarITHState extends State<LugarITH> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(229, 2279, 229, 1),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.098), // Color de la sombra
                    spreadRadius: 0.0, // Extensión de la sombra
                    blurRadius: 20.0, // Desenfoque de la sombra
                    offset: Offset(0.0, 4.0), // Desplazamiento en (x, y)
                  ),
                ],
              ),
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                onPressed: () {}, 
                icon: Icon(Icons.more_vert, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1))),
            ],
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))
        ),
      body: ListView(
        children: [
          Stack(
              children: [
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 446.0),
                      child: TabsAgora(),
                    ),
                    Stack(
                      children: [
                        Image(image: AssetImage('assets/img/lugarMapaITH.png'), width: double.infinity, height: 325, fit: BoxFit.cover,),
                        Padding(padding: const EdgeInsets.only(top: 291.0), child: Container(width: double.infinity, height: 155.0,
                            decoration: ShapeDecoration(
                              color: Colors.white, 
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))), 
                              ),
                            child: Column(
                              children: [
                                //Nombre del Lugar
                                Padding(padding: const EdgeInsets.only(top: 12.0), child: Container(width: 230.0,
                                    child: const Row(
                                      children: [
                                        Expanded(child: Text(
                                            'Instituto Tecnologico de Hermosillo',
                                            maxLines: 2,
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.center,
                                            style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0, fontWeight: FontWeight.w600)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                //Aglomeracion Actual
                                Padding(padding: EdgeInsets.only(top: 21.0),
                                  child: AglomeracionActual(aglomeracionTipo: 'AglomeracionAlta')
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
        ],
      ),
    );
  }
}