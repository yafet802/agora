import 'package:flutter/material.dart';

class BotonSecundario extends StatelessWidget {
  
  final String nombreBoton;
  final Icon iconoBoton;
  final VoidCallback onPressed;
  double distanciaIcono;
  double distanciaNombre;
  double? anchoBoton;
  double? alturaBoton;

  BotonSecundario({
    required this.nombreBoton,
    required this.iconoBoton,
    required this.onPressed,
    this.alturaBoton,
    this.anchoBoton,
    required this.distanciaIcono,
    required this.distanciaNombre 
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: anchoBoton, height: alturaBoton, 
      child: OutlinedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        side: const MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
        backgroundColor: const MaterialStatePropertyAll<Color>(Colors.transparent), 
        overlayColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return const Color.fromRGBO(244, 89, 34, 1);
            }
              return Colors.transparent;
          },
        ),
        elevation: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          if (states.contains(MaterialState.pressed)) {
            return 8;
          } else if (states.contains(MaterialState.hovered)) {
            return 0;
          }
          return 0;
          }
        ),
        iconColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return const Color.fromRGBO(244, 89, 34, 1);
          },
        ),
        foregroundColor: MaterialStateProperty.resolveWith<Color>(
          (Set<MaterialState> states) {
            if (states.contains(MaterialState.pressed)) {
              return Colors.white;
            }
              return const Color.fromRGBO(244, 89, 34, 1);
          },
          ),
      ),
      child: Padding(padding: EdgeInsets.only(left: distanciaIcono), 
        child: Row(
          children: [
            iconoBoton,
            Padding(padding: EdgeInsets.only(left: distanciaNombre), 
              child: Text(
                nombreBoton,
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
              ),
            )
          ],
        )),
      ),
    );
  }
}