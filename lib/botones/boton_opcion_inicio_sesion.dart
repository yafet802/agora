import 'package:flutter/material.dart';

class BotonOpcionInicioSesion extends StatelessWidget {
  
  final Color colorBoton;
  final Image logoBoton;

  BotonOpcionInicioSesion({
    required this.colorBoton,
    required this.logoBoton
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 100.0, height: 70.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
      child: FilledButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll<Color>(colorBoton), 
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0))),
          splashFactory: NoSplash.splashFactory,
          shadowColor: MaterialStatePropertyAll<Color>(colorBoton),
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return 8.0;
              }
              return 4.0;
            }
          ),
        ), 
        child: Image(image: logoBoton.image, width: 50.0, height: 50.0)
      ),
    );
  }
}