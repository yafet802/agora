import 'package:agora/boton_principal/boton.dart';
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
            Container(width: double.infinity, height: 129.0,
              color: Color.fromRGBO(225, 227, 228, 1),
              child: TabBarView(
                children: [

                  //Apartados Reportes
                  Center(
                    child: Column(
                      children: [
                        //Boton Reportar Aglomeracion
                        Padding(padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                          child: Boton(iconoBoton: Icon(Icons.campaign_rounded), nombreBoton: 'Reportar Aglomeracion', colorBoton: Colors.white, iconoColor: Color.fromRGBO(103, 103, 103, 1), colorNombre: Color.fromRGBO(103, 103, 103, 1))
                        ),
                        //Boton Solicitar Reporte
                        Boton(iconoBoton: Icon(Icons.not_listed_location_sharp), nombreBoton: 'Solicitar Reporte', colorBoton: Colors.white, iconoColor: Color.fromRGBO(103, 103, 103, 1), colorNombre: Color.fromRGBO(103, 103, 103, 1))
                      ],
                    )
                  ),
                  
                  //Apartado Otros
                  Center(
                    child: Column(
                      children: [
                        //Boton Abrir en Google Maps
                        Padding(padding: EdgeInsets.only(top: 20.0, bottom: 15.0),
                          child: Boton(iconoBoton: Icon(Icons.travel_explore_rounded), nombreBoton: 'Abrir en Google Maps', colorBoton: Colors.white, iconoColor: Color.fromRGBO(103, 103, 103, 1), colorNombre: Color.fromRGBO(103, 103, 103, 1))
                        ),
                        //Boton Sugerir Cambio
                        Boton(iconoBoton: Icon(Icons.edit_square), nombreBoton: 'Sugerir Cambio', colorBoton: Colors.white, iconoColor: Color.fromRGBO(103, 103, 103, 1), colorNombre: Color.fromRGBO(103, 103, 103, 1))
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