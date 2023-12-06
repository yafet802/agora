import 'package:agora/botones/boton.dart';
import 'package:agora/botones/boton_secundario.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';
import 'package:agora/overlays/overlay_cuenta_agora/apartado_usuario.dart';
import 'package:agora/sugerencias/sugerencias.dart';
import 'package:flutter/material.dart';
import 'package:agora/firebase/auth.dart';
import 'package:fluttertoast/fluttertoast.dart';

class OverlayMenu extends StatelessWidget {
  OverlayMenu({super.key});

  final AuthService _auth = AuthService(); 

  @override
  Widget build(BuildContext context) {
    return Container(width: 365.0, height: 468.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color.fromRGBO(225, 227, 228, 1),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(left: -5.0,
            child: Container(width: 375.0, height: 174.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.white),
              child: Column(
                children: [
                  Padding(padding: const EdgeInsets.only(top: 19.0),
                    child: RichText(
                      text: const TextSpan(
                        text: 'Cuenta ',
                        style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0),
                        children: <TextSpan> [
                          TextSpan(text: 'Agora', style: TextStyle(color: Color.fromRGBO(244, 89, 34, 1), fontFamily: 'Poppins', fontSize: 18.0))
                        ]
                      )
                    ),
                  ),
                  const ApartadoUsuario()
                ],
              ),
            ),
          ),
          Positioned(left: 25.0, top: 202.0,
            child: Container(width: 315.0, height: 170.0,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: Column(
                children: [
                  //Botones
            
                  //Boton Configuracion
                  Padding(padding: const EdgeInsets.only(bottom: 20.0),
                    child: Boton(
                      iconoBoton: const Icon(Icons.settings_rounded), 
                      nombreBoton: 'Configuracion', 
                      colorBoton: Colors.white, 
                      iconoColor: const Color.fromRGBO(103, 103, 103, 1), 
                      colorNombre: const Color.fromRGBO(103, 103, 103, 1),
                      onPressed: () {},
                    )
                  ),
                  //Boton Sugerir Cambio
                  Boton(
                    iconoBoton: const Icon(Icons.edit_square), 
                    nombreBoton: 'Sugerir Cambio', 
                    colorBoton: Colors.white, 
                    iconoColor: const Color.fromRGBO(103, 103, 103, 1), 
                    colorNombre: const Color.fromRGBO(103, 103, 103, 1),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => const Sugerencias()));},
                  ),
                  //Boton Acerca de...
                  Padding(padding: const EdgeInsets.only(top: 20.0),
                    child: Boton(
                      iconoBoton: const Icon(Icons.info_outline_rounded), 
                      nombreBoton: 'Acerca de...', 
                      colorBoton: Colors.white, 
                      iconoColor: const Color.fromRGBO(103, 103, 103, 1), 
                      colorNombre: const Color.fromRGBO(103, 103, 103, 1),
                      onPressed: () {},
                    )
                  ),
                ],
              )
            )
          ),
          Positioned(left: -5.0, top: 381.0,
            child: //Boton Cerrar Sesion
            Container(width: 375.0, height: 87.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 20.0, offset: const Offset(5.0, 0.0), color: Colors.black.withOpacity(0.05))]
              ),
              child: Center(
                child: BotonSecundario(
                  nombreBoton: 'Cerrar Sesion', 
                  iconoBoton: const Icon(Icons.meeting_room_rounded), 
                  onPressed: () {
                    _auth.signOut();
                    Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InicioSesion()));
                    Fluttertoast.showToast(msg: "Sesion cerrado");
                  },
                  anchoBoton: 233.0,
                  alturaBoton: 47.0,
                  distanciaIcono: 17.0,
                  distanciaNombre: 17.0,
                )
              ),
            )
          )
        ],
      ),
    );
  }
}
