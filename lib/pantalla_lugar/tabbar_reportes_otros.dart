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
            Container(width: double.infinity, height: 129,
              color: Color.fromRGBO(229, 2279, 229, 1),
              child: TabBarView(
                children: [

                  //Apartados Reportes
                  Center(
                    child: Column(
                      children: [
                        //Boton Reportar Aglomeracion
                        Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 295.0, height: 33.0,
                                child: FilledButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                                    side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    elevation: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8; // Elevación cuando se presiona el botón
                                        } else if (states.contains(MaterialState.hovered)) {
                                          return 0; // Elevación cuando el mouse está sobre el botón
                                        }
                                        return 0; // Elevación por defecto cuando el botón no se está presionando ni se está pasando el mouse sobre él
                                      }
                                    ),
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    iconColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.black; // Color por defecto
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del texto cuando se toca
                                        }
                                          return Colors.black; // Color del texto por defecto
                                      },
                                    ),
                                  ), 
                                  child: const Padding(padding: EdgeInsets.only(left: 10.0), child: Row(
                                      children: [
                                        Icon(Icons.campaign_rounded, size: 22.0),
                                        Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                            'Reportar Aglomeracion',
                                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), 
                                ),
                              ),
                            ),
                        //Boton Solicitar Reporte
                        Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 295.0, height: 33.0,
                                child: FilledButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                                    side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    elevation: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8; // Elevación cuando se presiona el botón
                                        } else if (states.contains(MaterialState.hovered)) {
                                          return 0; // Elevación cuando el mouse está sobre el botón
                                        }
                                        return 0; // Elevación por defecto cuando el botón no se está presionando ni se está pasando el mouse sobre él
                                      }
                                    ),
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    iconColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.black; // Color por defecto
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del texto cuando se toca
                                        }
                                          return Colors.black; // Color del texto por defecto
                                      },
                                    ),
                                  ), 
                                  child: const Padding(padding: EdgeInsets.only(left: 8.5), child: Row(
                                      children: [
                                        Icon(Icons.not_listed_location_rounded, size: 22.0),
                                        Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                            'Solicitar Reporte',
                                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), 
                                ),
                              ),
                            ),
                      ],
                    )
                  ),
                  
                  //Apartado Otros
                  Center(
                    child: Column(
                      children: [
                        //Boton Abrir Ubicacion en Google Maps
                        Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 295.0, height: 33.0,
                                child: FilledButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                                    side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                                    backgroundColor: MaterialStatePropertyAll<Color>(Colors.white),
                                    elevation: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8; // Elevación cuando se presiona el botón
                                        } else if (states.contains(MaterialState.hovered)) {
                                          return 0; // Elevación cuando el mouse está sobre el botón
                                        }
                                        return 0; // Elevación por defecto cuando el botón no se está presionando ni se está pasando el mouse sobre él
                                      }
                                    ),
                                  ), 
                                  child: const Padding(padding: EdgeInsets.only(left: 10.0), child: Row(
                                      children: [
                                        Image(image: AssetImage('assets/img/logoGoogleMaps.png'), width: 18, height: 18),
                                        Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                            'Abrir en GoogleMaps',
                                            style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 16.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), 
                                ),
                              ),
                            ),
                        //Boton Sugerir Cambio
                        Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 295.0, height: 33.0,
                                child: FilledButton(
                                  onPressed: () {},
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                                    side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    elevation: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8; // Elevación cuando se presiona el botón
                                        } else if (states.contains(MaterialState.hovered)) {
                                          return 0; // Elevación cuando el mouse está sobre el botón
                                        }
                                        return 0; // Elevación por defecto cuando el botón no se está presionando ni se está pasando el mouse sobre él
                                      }
                                    ),
                                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.white; // Color por defecto
                                      },
                                    ),
                                    iconColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del efecto de tinta cuando se toca
                                        }
                                          return Colors.black; // Color por defecto
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del texto cuando se toca
                                        }
                                          return Colors.black; // Color del texto por defecto
                                      },
                                    ),
                                  ), 
                                  child: const Padding(padding: EdgeInsets.only(left: 8.5), child: Row(
                                      children: [
                                        Icon(Icons.edit_square, size: 22.0),
                                        Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                            'Sugerir Cambio',
                                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), 
                                ),
                              ),
                            ),
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