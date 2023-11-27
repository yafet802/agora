import 'package:agora/botones/boton.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros/deslizar_reportar_solicitar.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros/seleccionar_aglomeracion_actual.dart';
import 'package:agora/sugerencias/sugerencias.dart';
import 'package:flutter/material.dart';

class TabsAgora extends StatelessWidget {
  const TabsAgora({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Column(
          children: [
            Material(
              child: Container(
                height: 70.0,
                decoration: BoxDecoration(
                  color:  Colors.white,
                ),
                child: TabBar(
                  physics: ClampingScrollPhysics(),
                  indicatorPadding: EdgeInsets.only(top: 10, bottom: 10),
                  unselectedLabelColor: Colors.black,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelColor: Colors.white,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: Color.fromRGBO(244, 89, 34, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Color.fromRGBO(244, 89, 34, 1).withOpacity(0.2),
                        blurRadius: 10,
                        offset: Offset(0, 0),
                        spreadRadius: 0,
                      ),
                    ],
                  ),
                  tabs: [
                    Tab(
                      child: Container(height: 47,
                        child: const Align(alignment: Alignment.center, child: Text(
                            'Reportes',
                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)),
                        ),
                      ),
                    ),
                    Tab(
                      child: Container(height: 47,
                        child: const Align(alignment: Alignment.center, child: Text(
                            'Otros',
                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(width: double.infinity, height: 220.0,
              color: Color.fromRGBO(225, 227, 228, 1),
              child: TabBarView(
                children: [

                  //Apartados Reportes
                  Center(
                    child: Column(
                      children: [

                        //Descripcion
                        Padding(padding: const EdgeInsets.only(top: 10.0),
                          child: Container(width: 295.0, height: 60.0,
                            child: const Row(
                              children: [
                                Expanded(
                                  child: Text('Aqui puedes seleccionar el tipo de aglomeracion presente en el lugar: ', textAlign: TextAlign.center , maxLines: 2, overflow: TextOverflow.ellipsis,
                                  style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                ),
                              ],
                            ),
                          ),
                        ),

                        //Seleccionar Aglomeracion Actual
                        const Padding(padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: SeleccionarAglomeracionActual(),
                        ),

                        //Deslizar para Enviar/Reporte/Solicitud
                        const Padding(padding: EdgeInsets.only(top: 10.0),
                          child: DeslizarReportarSolicitar(),
                        )
                      ],
                    )
                  ),
                  
                  //Apartado Otros
                  Center(
                    child: Column(
                      children: [
                        //Boton Abrir en Google Maps
                        Padding(padding: EdgeInsets.only(top: 27.0, bottom: 20.0),
                          child: Boton(
                            iconoBoton: Icon(Icons.travel_explore_rounded), 
                            nombreBoton: 'Abrir en Google Maps', 
                            colorBoton: Colors.white, 
                            iconoColor: Color.fromRGBO(103, 103, 103, 1), 
                            colorNombre: Color.fromRGBO(103, 103, 103, 1),
                            onPressed: () {},
                          )
                        ),
                        //Boton Sugerir Cambio
                        Boton(
                          iconoBoton: Icon(Icons.edit_square), 
                          nombreBoton: 'Sugerir Cambio', 
                          colorBoton: Colors.white, 
                          iconoColor: Color.fromRGBO(103, 103, 103, 1), 
                          colorNombre: Color.fromRGBO(103, 103, 103, 1),
                          onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Sugerencias()));},
                        ),
                        //Boton Acerca de...
                        Padding(padding: EdgeInsets.only(top: 20.0, bottom: 27.0),
                          child: Boton(
                            iconoBoton: Icon(Icons.info_outline_rounded), 
                            nombreBoton: 'Acerca de...', 
                            colorBoton: Colors.white, 
                            iconoColor: Color.fromRGBO(103, 103, 103, 1), 
                            colorNombre: Color.fromRGBO(103, 103, 103, 1),
                            onPressed: () {},
                          )
                        )
                      ],
                    )
                  ),
                ]
              ), 
            ),
          ],
        )
    );
  }
}