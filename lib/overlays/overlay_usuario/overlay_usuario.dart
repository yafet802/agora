import 'package:agora/cambiar_foto_perfil/cambiar_foto_perfil.dart';
import 'package:flutter/material.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';

class OverlayUsuario extends StatelessWidget {
  const OverlayUsuario({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 268.0, height: 353.0,
            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
            child: Column(
              children: [
                Row(
                  children: [
                    //Boton Cambiar Foto Perfil
                    Padding(padding: EdgeInsets.only(left: 15.0, top: 9.0), child: Stack(
                        children: [
                          Container(width: 90, height: 90,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
                            child: Material(
                              borderRadius: BorderRadius.circular(100), 
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              color: Colors.transparent,
                              child: InkWell(
                                  onLongPress: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CambiarFotoPerfil()));},
                                  splashColor: Color.fromRGBO(244, 90, 34, 0.274),
                                  child: Center(child: Image(image: AssetImage('assets/img/fotoPerfil.png'), width: 80, height: 80,)),
                              ),
                            ),
                          ),
                          Positioned(left: 50, top: 50, child: Container(width: 40, height: 40, 
                              decoration: BoxDecoration(color: Color.fromRGBO(225, 227, 228, 1), borderRadius: BorderRadius.circular(100)),
                              child: Center(child: Icon(Icons.create_rounded, color: Color.fromRGBO(244, 89, 34, 1))),
                            ),
                          ),
                        ],
                      ),
                    ),
                    //Informacion Usuario
                    Padding(padding: EdgeInsets.all(4.0),
                      child: Container(width: 154.0, height: 35.0,
                        child: Stack(
                          children: [
                            Positioned(left: 0.0, top: 0.0, child: Text(
                              'Dogtor',
                              style: TextStyle(fontSize: 16.0, color: Colors.black, fontFamily: 'Poppins')),
                            ),
                            Positioned(left: 0.0, top: 21.0, child: Text(
                              'DogtorTLN@carls.jr.com',
                              style: TextStyle(fontSize: 11.0, color: Color.fromRGBO(68, 68, 76, 100),fontFamily: 'Poppins')),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                //Linea Superior
                Padding(padding: EdgeInsets.only(top: 16.0, bottom: 15.0), child: Container(width: 291.0, height: 0.0,
                      decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 100), border: Border.all(color: Color.fromRGBO(217, 217, 217, 100), width: 1))),           
                ),
                //Botones
                Column(
                  children: [
                    //Boton Lugares Guardados
                    Container(width: 233.0, height: 33.0, child: FilledButton(
                          onPressed: () {}, 
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                            side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                              },
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                          child: const Padding(padding: EdgeInsets.only(left: 16.0), child: Row(
                              children: [
                                Icon(Icons.bookmark_rounded, size: 20),
                                Padding(padding: EdgeInsets.only(left: 17.0), child: Text(
                                    'Guardados',
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    ),
                    Padding(padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0), child: Container(width: 233.0, height: 33.0, child: FilledButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                            side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                              },
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                          child: const Padding(padding: EdgeInsets.only(left: 16.0), child: Row(
                              children: [
                                Icon(Icons.settings_rounded, size: 20),
                                Padding(padding: EdgeInsets.only(left: 17.0), child: Text(
                                    'Configuracion',
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(width: 233.0, height: 33.0, child: FilledButton(
                          onPressed: () {}, 
                          style: ButtonStyle(
                            shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                            side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
                            overlayColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                              },
                            ),
                            backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) {
                                  return Color.fromRGBO(129, 129, 129, 1); // Cambia el color del efecto de tinta cuando se toca
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
                          child: const Padding(padding: EdgeInsets.only(left: 16.0), child: Row(
                              children: [
                                Icon(Icons.info_outline, size: 20),
                                Padding(padding: EdgeInsets.only(left: 17.0), child: Text(
                                    'Acerca de',
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                    ),
                  ],
                ),
                //Linea Inferior
                Padding(padding: EdgeInsets.only(top: 15.0, bottom: 15.0), child: Container(width: 291.0, height: 0.0,
                      decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 100), border: Border.all(color: Color.fromRGBO(217, 217, 217, 100), width: 1))),           
                ),
                //Boton Cerrar Sesion
                Container(width: 233.0, height: 47.0, child: OutlinedButton(
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InicioSesion()));},
                    style: ButtonStyle(
                      side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent), 
                      overlayColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed)) {
                            return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                          }
                          return Colors.transparent; // Color transparente por defecto
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
                    child: const Padding(padding: EdgeInsets.only(left: 16.0), child: Row(
                              children: [
                                Icon(Icons.meeting_room_rounded, size: 20),
                                Padding(padding: EdgeInsets.only(left: 17.0), child: Text(
                                    'Cerrar Sesion',
                                    style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                                  ),
                                )
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
