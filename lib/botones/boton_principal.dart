import 'package:flutter/material.dart';

class BotonPrincipal extends StatelessWidget {
  
  final String nombreBoton;
  final VoidCallback onPressed;

  BotonPrincipal({
    required this.nombreBoton,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 156.0, height: 48.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50.0), 
        boxShadow: const [
          BoxShadow(
            color: Color.fromRGBO(248, 148, 112, 1), 
            offset: Offset(0.0, 4.0), 
            blurRadius: 10.0
          )
        ]
      ),
      child: FilledButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(244, 89, 34, 1)), 
          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
          shadowColor: const MaterialStatePropertyAll<Color>(Color.fromRGBO(248, 148, 112, 1)),
          splashFactory: NoSplash.splashFactory,
          elevation: MaterialStateProperty.resolveWith<double>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.pressed)) {
                return 8.0;
              }
              return 4.0;
            }
          ),
        ),
        child: Text(
          nombreBoton, 
          style: const TextStyle(
            fontFamily: 'Poppins', 
            fontSize: 16.0, 
            color: Colors.white
          )
        )
      ),
    );
  }
}