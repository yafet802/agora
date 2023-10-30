import 'package:flutter/material.dart';

class BotonFiltrarMapa extends StatelessWidget {
  const BotonFiltrarMapa({super.key});

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
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(100),
        child: InkWell(
          onTap: () {},
          splashColor: Color.fromRGBO(244, 90, 34, 0.274),
          child: Center(child: Icon(Icons.filter_alt_rounded, color: Color.fromRGBO(244, 89, 34, 1)))),
      )
    );
  }
}