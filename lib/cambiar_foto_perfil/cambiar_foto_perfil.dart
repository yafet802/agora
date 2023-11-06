import 'package:flutter/material.dart';

class CambiarFotoPerfil extends StatefulWidget {
  const CambiarFotoPerfil({super.key});

  @override
  State<CambiarFotoPerfil> createState() => _CambiarFotoPerfilState();
}

class _CambiarFotoPerfilState extends State<CambiarFotoPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 227, 228, 1),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.0, 
                    blurRadius: 20.0,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: RichText(
              text: const TextSpan(
                text: 'Cuenta de ',
                style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0),
                children: <TextSpan> [
                  TextSpan(text: 'Agora', style: TextStyle(color: Color.fromRGBO(244, 89, 34, 1), fontFamily: 'Poppins', fontSize: 18.0))
                ]
              )
            ),
            leading: IconButton(
                onPressed: () {Navigator.of(context).pop();},
                icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))),
      body: ListView(
          children: [
            Column(
              children: [
                const Padding(padding: const EdgeInsets.only(top: 22.0, left: 42, bottom: 10),
                  child: Row(
                    children: [
                      Text('Foto de Perfil',  style: TextStyle(color: Colors.black, fontSize: 16.0, fontFamily: 'Poppins')),
                    ],
                  )
                ),
                Padding(padding: EdgeInsets.only(left: 22, right: 22, bottom: 60),
                  child: Container(width: double.infinity, height: 75.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0)]),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          'Una foto ayudara a las personas a reconocerte y te permitira saber cuando hayas accedido a la cuenta.',
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 40), child: Container(width: 270.0, height: 270.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 4.0), borderRadius: BorderRadius.circular(500.0)),
                    child: Material(
                      borderRadius: BorderRadius.circular(500.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(image: AssetImage('assets/img/hombreperro.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 15),
                  child: Container(width: 233.0, height: 33.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                    child: FilledButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                        side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Color.fromRGBO(225, 227, 228, 1); // Color por defecto
                          },
                        ),
                        elevation: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return 8; // Elevación cuando se presiona el botón
                            } else if (states.contains(MaterialState.hovered)) {
                              return 0; // Elevación cuando el mouse está sobre el botón
                            }
                            return 0;
                          }
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Color.fromRGBO(225, 227, 228, 1); // Color por defecto
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
                          Icon(Icons.edit_rounded, size: 20.0),
                          Padding(padding:  EdgeInsets.only(left: 17.0), child: Text(
                              'Cambiar',
                              style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Container(width: 233.0, height: 33.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                    child: FilledButton(
                      onPressed: () {}, 
                      style: ButtonStyle(
                        splashFactory: NoSplash.splashFactory,
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                        side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Color.fromRGBO(225, 227, 228, 1); // Color por defecto
                          },
                        ),
                        elevation: MaterialStateProperty.resolveWith(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return 8; // Elevación cuando se presiona el botón
                            } else if (states.contains(MaterialState.hovered)) {
                              return 0; // Elevación cuando el mouse está sobre el botón
                            }
                            return 0;
                          }
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Color.fromRGBO(225, 227, 228, 1); // Color por defecto
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
                          Icon(Icons.delete_rounded, size: 20.0),
                          Padding(padding:  EdgeInsets.only(left: 17.0), child: Text(
                              'Quitar',
                              style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
              ],
            )
          ],
        )
    );
  }
}