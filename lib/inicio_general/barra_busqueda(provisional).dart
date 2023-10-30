import 'package:flutter/material.dart';

class BarraBusquedaMapa extends StatelessWidget {
  const BarraBusquedaMapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Material(
        borderRadius: BorderRadius.circular(100),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(
          onTap: () {},
          splashColor: Color.fromRGBO(244, 90, 34, 0.274),
          child: Center(child: Material(
            borderRadius: BorderRadius.circular(100), 
            clipBehavior: Clip.antiAliasWithSaveLayer, 
            child: Image(image: AssetImage('assets/img/hombreperro.png'), width: 41, height: 41)))),
      )
    );
  }
}