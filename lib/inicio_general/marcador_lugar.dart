import 'package:agora/pantalla_lugar/bottom_sheet.dart';
import 'package:flutter/material.dart';

class MarcadorLugar extends StatelessWidget {
  
  final Image iconoImagen;
  final String nombreLugar;
  final Image imagenLugar;

  MarcadorLugar({
    required this.iconoImagen, 
    required this.nombreLugar,
    required this.imagenLugar,
  });

  @override
  Widget build(BuildContext context) {

    Color sombraIcono;
    String aglomeracionActual;

    String imageName = iconoImagen.image.toString();
    String containerName = iconoImagen.image.toString();

    if (imageName.contains('img/iconoAglomeracion/aglomeracionBaja.png')) {
      sombraIcono = Color.fromRGBO(107, 180, 64, 0.7);
    } else if (imageName.contains('img/iconoAglomeracion/aglomeracionMedia.png')) {
      sombraIcono = Color.fromRGBO(246, 201, 39, 0.7);
    } else if (imageName.contains('img/iconoAglomeracion/aglomeracionAlta.png')) {
      sombraIcono = const Color.fromRGBO(201, 38, 38, 0.7);
    } else if (imageName.contains('img/iconoAglomeracion/sinReportes.png')) {
      sombraIcono = const Color.fromRGBO(111, 134, 149, 0.7);
    } else if (imageName.contains('img/iconoAglomeracion/eventoProximo.png')) {
      sombraIcono = const Color.fromRGBO(0, 133, 255, 0.7);
    } else {
       sombraIcono = Colors.transparent;
    }

    if (containerName.contains('img/iconoAglomeracion/aglomeracionBaja.png')) {
      aglomeracionActual = 'AglomeracionBaja';
    } else if (containerName.contains('img/iconoAglomeracion/aglomeracionMedia.png')) {
      aglomeracionActual = 'AglomeracionMedia';
    } else if (containerName.contains('img/iconoAglomeracion/aglomeracionAlta.png')) {
      aglomeracionActual = 'AglomeracionAlta';
    } else if (containerName.contains('img/iconoAglomeracion/sinReportes.png')) {
      aglomeracionActual = 'SinReportes';
    } else if (containerName.contains('img/iconoAglomeracion/eventoProximo.png')) {
      aglomeracionActual = 'EventoProximo';
    } else {
      aglomeracionActual = '';
    }

    return Container(width: 47.0, height: 47.0,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), boxShadow: [BoxShadow(color: sombraIcono, blurRadius: 10)]),
      child: Material(
        borderRadius: BorderRadius.circular(50.0),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: InkWell(onTap: () {
          showModalBottomSheet<dynamic>(
            isScrollControlled: true,
            context: context, 
            builder: (context) {
              return LugarBottomSheet(
                nombreLugar: nombreLugar, 
                imagenLugar: imagenLugar, 
                aglomeracionActual: aglomeracionActual);
            });
        }, child: Image(image: iconoImagen.image, fit: BoxFit.cover))),
    );
  }
}