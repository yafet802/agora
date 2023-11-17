import 'package:agora/buscar_lugar/boton_lugar_mapa.dart';
import 'package:flutter/material.dart';
import 'package:agora/pantalla_lugar/aglomeracion_actual.dart';
import 'package:rounded_expansion_tile/rounded_expansion_tile.dart';

class FormatoLugarBuscar extends StatelessWidget {
  
  final String nombreLugar;
  final Image imagenLugar;
  final String aglomeracionActual;

  FormatoLugarBuscar({
    required this.nombreLugar, 
    required this.imagenLugar, 
    required this.aglomeracionActual
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      color: Colors.white,
      shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: RoundedExpansionTile(
        duration: const Duration(milliseconds: 250),
        leading: Padding(padding: const EdgeInsets.only(left: 15.0),
          child: Container(width: 45.0, height: 45.0,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
            child: Material(
              borderRadius: BorderRadius.circular(50.0),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: imagenLugar
            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
        title: Container(width: 260.0, height: 53.0,
          child: Row(
            children: [
              Expanded(
                child: Text(nombreLugar, maxLines: 2, overflow: TextOverflow.ellipsis,
                style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
              ),
            ],
          ),
        ), 
        trailing: const Icon(Icons.keyboard_arrow_down, color: Color.fromRGBO(244, 89, 34, 1)),
        rotateTrailing: true,
        children: [
          Padding(padding: const EdgeInsets.only(top: 16.0, bottom: 24.0, left: 31.0, right: 31.0),
            child: Container(width: 238.0, height: 56.0,
            decoration: BoxDecoration(color: Colors.transparent),
              child: AglomeracionActual(aglomeracionTipo: aglomeracionActual)),
          ),
          Padding(padding: const EdgeInsets.only(bottom: 24.0, left: 31.0, right: 31.0),
            child: BotonLugarMapa()
          )
        ],
      ),
    );
  }
}