import 'package:agora/inicio_general/inicio_general.dart';
import 'package:flutter/material.dart';

class BotonInicio extends StatelessWidget {
  
  final Icon iconoBoton;
  final GestureTapCallback onTap;

  BotonInicio({
    required this.iconoBoton,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 47, height: 47,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        shadows: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10)],
      ),
      child: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(50.0),
        child: Builder(
          builder: (inicioMapa) {
            return InkWell(
              onTap: () {
                onTap;
              },
              splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
              child: Center(child: Icon(iconoBoton.icon, color: const Color.fromRGBO(244, 90, 34, 1))));
          }
        )
      )
    );
  }
}