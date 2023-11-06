import 'package:flutter/material.dart';

class BotonCancelar extends StatelessWidget {
  const BotonCancelar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 155.0, height: 47.0,
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
            Icon(Icons.cancel_rounded, size: 22.0),
            Padding(padding:  EdgeInsets.only(left: 8.0), child: Text(
                'Cancelar',
                style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
              ),
            ),
          ],
        ),
      ),
    );
  }
}