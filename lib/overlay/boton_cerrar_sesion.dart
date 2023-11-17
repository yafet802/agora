import 'package:flutter/material.dart';

class BotonCerrarSesion extends StatelessWidget {
  const BotonCerrarSesion({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 233.0, height: 47.0, 
      child: OutlinedButton(
      onPressed: () {},
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
      child: const Padding(padding: EdgeInsets.only(left: 16.0), 
        child: Row(
          children: [
            Icon(Icons.meeting_room_rounded, size: 20),
            Padding(padding: EdgeInsets.only(left: 17.0), 
              child: Text(
                'Cerrar Sesion',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
              ),
            )
          ],
        )),
      ),
    );
  }
}