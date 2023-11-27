import 'package:flutter/material.dart';

class BotonLugarMapa extends StatelessWidget {
  const BotonLugarMapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 238.0, height: 47.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), border: Border.all(width: 1.6, color: const Color.fromRGBO(244, 89, 34, 1))),
      child: Material(clipBehavior: Clip.antiAliasWithSaveLayer, borderRadius: BorderRadius.circular(50.0),
        child: InkWell(
          onTap: () {
            
          },
          splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
          child: Row(
            children: [
              Padding(padding: const EdgeInsets.only(left: 25.0, right: 10.0),
                child: Icon(Icons.map_rounded, color: Color.fromRGBO(244, 89, 34, 1)),
              ),
              Text('Abrir en el Mapa', style: TextStyle(color: Color.fromRGBO(244, 89, 34, 1), fontFamily: 'Poppins', fontSize: 16.0))
            ],
          )
        ),
      ),
    );
  }
}