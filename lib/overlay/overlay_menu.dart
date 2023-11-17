import 'package:agora/boton_principal/boton.dart';
import 'package:agora/overlay/apartado_usuario.dart';
import 'package:agora/overlay/boton_cerrar_sesion.dart';
import 'package:agora/overlay/boton_opciones.dart';
import 'package:flutter/material.dart';

class OverlayMenu extends StatelessWidget {
  const OverlayMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 375.0, height: 530.0,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.white),
        child: Column(
          children: [
            Padding(padding: EdgeInsets.only(top: 20.0, bottom: 15.0), 
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
    
            //Apartado Usuario
            Padding(padding: EdgeInsets.only(bottom: 20.0),
              child: ApartadoUsuario(),
            ),
    
            //Linea Superior
            Padding(padding: EdgeInsets.only(bottom: 20.0),
              child: Container(width: double.infinity, height: 0.0,
                decoration: BoxDecoration(color: Color.fromRGBO(225, 227, 228, 1), border: Border.all(color: Color.fromRGBO(225, 227, 228, 1))),
              ),
            ),
    
            //Botones
            Boton(iconoBoton: Icon(Icons.bookmark_rounded), nombreBoton: 'Guardados', colorBoton: Colors.white, iconoColor: Colors.black, colorNombre: Colors.black),
            Padding(padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
              child: Boton(iconoBoton: Icon(Icons.settings_rounded), nombreBoton: 'Configuracion', colorBoton: Colors.white, iconoColor: Colors.black, colorNombre: Colors.black),
            ),
            Boton(iconoBoton: Icon(Icons.info_outline), nombreBoton: 'Acerca de', colorBoton: Colors.white, iconoColor: Colors.black, colorNombre: Colors.black),
            Padding(padding: const EdgeInsets.only(top: 15.0, bottom: 20.0),
              child: Boton(iconoBoton: Icon(Icons.edit_square), nombreBoton: 'Sugerir Cambio', colorBoton: Colors.white, iconoColor: Colors.black, colorNombre: Colors.black),
            ),
    
            //Linea Inferior
            Padding(padding: EdgeInsets.only(bottom: 20.0),
              child: Container(width: double.infinity, height: 0.0,
                decoration: BoxDecoration(color: Color.fromRGBO(225, 227, 228, 1), border: Border.all(color: Color.fromRGBO(225, 227, 228, 1))),
              ),
            ),
    
            //Boton Cerrar Sesion
            BotonCerrarSesion()
          ],
        )
      );                      
  }
}
