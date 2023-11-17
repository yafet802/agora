import 'package:flutter/material.dart';

class BotonOpcion extends StatelessWidget {
  
  final Icon iconoOpcion;
  final String nombreOpcion;

  BotonOpcion({required this.iconoOpcion, required this.nombreOpcion});

  @override
  Widget build(BuildContext context) {
    return Container(width: 315.0, height: 37.0, 
      child: FilledButton(
      onPressed: () {}, 
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
        side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Colors.transparent)),
        iconSize: MaterialStatePropertyAll<double>(22.0),
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
      child: Padding(padding: EdgeInsets.only(left: 16.0), 
        child: Row(
          children: [
            iconoOpcion,
            Padding(padding: EdgeInsets.only(left: 17.0), 
              child: Text(
                nombreOpcion,
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
              ),
            )
          ],
        ),
      ),
    ));
  }
}