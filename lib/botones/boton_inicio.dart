import 'package:flutter/material.dart';

class BotonInicio extends StatelessWidget {
  
  final Icon iconoBoton;
  final VoidCallback onPressed;

  BotonInicio({
    required this.iconoBoton,
    required this.onPressed
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
        child: IconButton(
              onPressed: onPressed,
              splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
              icon: Center(child: Icon(iconoBoton.icon, color: const Color.fromRGBO(244, 90, 34, 1))))
      )
    );
  }
}