import 'package:flutter/material.dart';

class BarraBusqueda extends StatelessWidget {
  
  final Widget botonUsuario;

  BarraBusqueda({
    required this.botonUsuario
  });

  @override
  Widget build(BuildContext context) {
    return Container(width: double.infinity, height: 47.0,
          clipBehavior: Clip.none,
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10.0)]
          ),
          child: SearchBar(
            elevation: const MaterialStatePropertyAll<double>(0.0),
            surfaceTintColor: const MaterialStatePropertyAll<Color>(Colors.white),
            backgroundColor: const MaterialStatePropertyAll<Color>(Colors.white),
            overlayColor: const MaterialStatePropertyAll<Color>(Colors.white),
            padding: const MaterialStatePropertyAll<EdgeInsets>(EdgeInsets.symmetric(horizontal: 6.0)),
            leading: const Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Icon(Icons.search_rounded, color: Color.fromRGBO(129, 129, 129, 1)),
            ),
            hintStyle: MaterialStatePropertyAll<TextStyle>(TextStyle(color: const Color.fromRGBO(129, 129, 129, 1).withOpacity(0.7))),
            hintText: 'Buscar lugar...',
            trailing: <Widget>[
              botonUsuario
            ]
          ),
        );
  }
}