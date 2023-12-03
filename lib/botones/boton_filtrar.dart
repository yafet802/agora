import 'package:flutter/material.dart';

class BotonFiltrar extends StatelessWidget {
  
  final Icon iconoBoton;
  final GestureTapCallback onTap;

  BotonFiltrar({
    required this.iconoBoton,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: 47.0, height: 47.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), border: Border.all(width: 1.6, color: const Color.fromRGBO(244, 89, 34, 1))),
      child: Material(clipBehavior: Clip.antiAliasWithSaveLayer, borderRadius: BorderRadius.circular(50.0),
        child: InkWell(
          splashFactory: NoSplash.splashFactory,
          onTap: onTap,
          child: Icon(iconoBoton.icon, color: const Color.fromRGBO(244, 89, 34, 1))
        ),
      ),
    );
  }
}