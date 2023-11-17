import 'package:flutter/material.dart';

class BotonGuardar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(width: 47.0, height: 47.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), border: Border.all(width: 1.6, color: const Color.fromRGBO(244, 89, 34, 1))),
      child: Material(clipBehavior: Clip.antiAliasWithSaveLayer, borderRadius: BorderRadius.circular(50.0),
        child: InkWell(
          onTap: () {
            
          },
          splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
          child: Icon(Icons.bookmark_add_outlined, color: Color.fromRGBO(244, 89, 34, 1))
        ),
      ),
    );
  }
}