import 'package:flutter/material.dart';

class OverlayMenu extends StatelessWidget {
  const OverlayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 331.0, height: 289.0,
                        decoration: ShapeDecoration(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
                        child: Column(
                          children: [
                            const Padding(padding: EdgeInsets.only(top: 12.0), child: Text(
                                'Menu',
                                style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0)
                              ),
                            ),
                            //Linea Superior
                            Padding(padding: EdgeInsets.only(top: 12.0), child: Container(width: 330.0, height: 0.0,
                                decoration: BoxDecoration(color: Color.fromRGBO(225, 227, 228, 1), border: Border.all(color: Color.fromRGBO(225, 227, 228, 1))),
                              ),
                            ),
                            //Boton Reportar Aglomeracion
                            Padding(padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 15.0), child: Container(width: 295.0, height: 33.0,
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
                            //Bonton Solicitar Reporte
                            Padding(padding: EdgeInsets.symmetric(horizontal: 0.0, vertical: 0.0), child: Container(width: 295.0, height: 33.0,
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
                            //Boton Buscar Aglomeracion
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
                                        Icon(Icons.search_rounded, size: 22.0),
                                        Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                            'Buscar Aglomeracion',
                                            style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                          ),
                                        ),
                                      ],
                                    ),
                                  ), 
                                ),
                              ),
                            ),
                            //Linea Inferior
                            Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 330.0, height: 0.0,
                                decoration: BoxDecoration(color: Color.fromRGBO(225, 227, 228, 1), border: Border.all(color: Color.fromRGBO(225, 227, 228, 1))),
                              ),
                            ),
                            //Boton Salir
                            Padding(padding: EdgeInsets.only(top: 15.0), child: Container(width: 233.0, height: 47.0,
                                child: FilledButton(
                                  onPressed: () {}, 
                                  style: ButtonStyle(
                                    shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                                    side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
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
                                          return Color.fromRGBO(244, 89, 34, 1); // Color por defecto
                                      },
                                    ),
                                    foregroundColor: MaterialStateProperty.resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return Colors.white; // Cambia el color del texto cuando se toca
                                        }
                                          return Color.fromRGBO(244, 89, 34, 1); // Color del texto por defecto
                                      },
                                    ),
                                  ), 
                                  child: const Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(Icons.logout_rounded, size: 22.0),
                                      Padding(padding:  EdgeInsets.only(left: 14.0), child: Text(
                                          'Salir',
                                          style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
  }
}