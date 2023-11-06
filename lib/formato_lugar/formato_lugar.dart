import 'package:flutter/material.dart';

class FormatoLugar {
  final String nombreLugarFormatoLugar;
  final Image imagenLugarFomatoLugar;
  final Image imagenAglomeracionActual;

  const FormatoLugar({
    required this.nombreLugarFormatoLugar,
    required this.imagenLugarFomatoLugar,
    required this.imagenAglomeracionActual,
  });
}

const allFormatoLugar = [
  
  //Aglomeracion Baja
  FormatoLugar(
    nombreLugarFormatoLugar: 'Coppel Camino del Seri', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/CoppelCaminoDelSeri.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Autozone Refacciones', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/AutozoneRefacciones.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'CUM (Centro de Usos Multiples)', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/CUM (Centro de Usos Multiples).png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Hospital General', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Hospital General.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Secretaria de Relaciones Exteriores', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Secretaria de Relaciones Exteriores.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Cinemex Encinas', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Cinemex Encinas.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'McDonalds', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/McDonalds.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Aeropuerto Internacional', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Aeropuerto Internacional.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Liverpool', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Liverpool.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Sears', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Sears.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png'))
  ),

  //Aglomeracion Media
  FormatoLugar(
    nombreLugarFormatoLugar: 'Instituto Tecnologico de Hermosillo', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Instituto Tecnologico de Hermosillo.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Universidad de Sonora', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Universidad de Sonora.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Soriana Encinas', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Soriana Encinas.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Cinepolis Hermosillo', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Cinepolis Hermosillo.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png'))
  ),
  FormatoLugar(
    nombreLugarFormatoLugar: 'Gallerias Mall Sonora', 
    imagenLugarFomatoLugar: Image(image: AssetImage('assets/img/formatoLugarImagen/Gallerias Mall Sonora.png')), 
    imagenAglomeracionActual: Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png'))
  ),

  //Aglomeracion Alta

  //Sin Reportes

  //Eventos Proximos
];