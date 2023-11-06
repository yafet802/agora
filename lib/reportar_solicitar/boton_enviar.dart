import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class BotonEnviar extends StatelessWidget {
  const BotonEnviar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 265, height: 47,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
        child: SlideAction(
          borderRadius: 50,
          elevation: 0.0,
          innerColor: Color.fromRGBO(225, 227, 228, 1),
          outerColor: Color.fromRGBO(80, 80, 80, 1),
          sliderButtonIconSize: 16.0,
          sliderButtonIconPadding: 5.0,
          sliderRotate: false,
          sliderButtonIcon: Icon(Icons.keyboard_arrow_right_rounded, color: Colors.black,),
          text: 'Desliza para Enviar',
          textStyle: TextStyle(color: Colors.white, fontSize: 16.0),
          alignment: Alignment.center,
          onSubmit: () {},
        ),
      );
  }
}