import 'package:flutter/material.dart';

class Boton extends StatelessWidget {
  
  final Icon iconoBoton;
  final String nombreBoton;
  final Color colorNombre;
  final Color colorBoton;
  final Color iconoColor;
  final VoidCallback? onPressed;

  Boton({
    required this.iconoBoton, 
    required this.nombreBoton,
    required this.colorBoton,
    required this.iconoColor,
    required this.colorNombre,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 315.0, height: 37.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0),
        color: Colors.transparent , 
        boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
      ),
      child: FilledButton(
      onPressed: onPressed, 
      style: ButtonStyle(
        splashFactory: NoSplash.splashFactory,
        foregroundColor: MaterialStatePropertyAll<Color>(colorNombre),
        iconColor:MaterialStatePropertyAll<Color>(iconoColor),
        elevation: MaterialStatePropertyAll<double>(0.0),
        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
        iconSize: const MaterialStatePropertyAll<double>(20.0),
        backgroundColor: MaterialStatePropertyAll<Color>(colorBoton)
      ),
      child: Padding(padding: EdgeInsets.only(left: 20.0), 
        child: Row(
          children: [
            iconoBoton,
            Padding(padding: EdgeInsets.only(left: 20.0), 
              child: Text(
                nombreBoton,
                style: const TextStyle(fontFamily: 'Poppins', fontSize: 16.0)
              ),
            )
          ],
        ),
      ),
    ));
  }
}