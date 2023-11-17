import 'package:agora/buscar_lugar/formato_lugar.dart';
import 'package:flutter/material.dart';

class BuscarLugar extends StatelessWidget {
  const BuscarLugar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 0.01, bottom: 0.01),
        child: Container(width: 400.0, height: double.infinity,
          decoration: BoxDecoration(color: Color.fromRGBO(229, 2279, 229, 1)),
          child: Column(
            children: [
              Container(width: double.infinity, height: 125.0,
                decoration: BoxDecoration(
                  color: Colors.white, 
                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0)), 
                  boxShadow: [BoxShadow(blurRadius: 20.0, offset: Offset(0.0, 4.0), color: Colors.black.withOpacity(0.1))]),
                  child: Center(
                    child: IconButton(icon: Icon(Icons.abc_outlined), onPressed: () {
                      Navigator.pop(context);
                    },),
                  ),
              ),
              Expanded(      
                child: Container(
                decoration: BoxDecoration(color: Colors.transparent),
                  child: ListView(
                    children: [
                      //Aeropuerto Internacional
                      Padding(padding: const EdgeInsets.only(top: 15.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Aeropuerto Internacional', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/AeropuertoInternacional.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Auto Zone Refacciones
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Auto Zone Refacciones', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/AutoZoneRefacciones.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Carls Jr
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Carls Jr', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CarlsJr.png')), aglomeracionActual: 'AglomeracionAlta'),
                      ),
                      //Cinemex Encinas
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Cinemex Encinas', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CinemexEncinas.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Cinepolis Hermosillo
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Cinepolis Hermosillo', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CinepolisHermosillo.png')), aglomeracionActual: 'AglomeracionMedia'),
                      ),
                      //Coppel Camino del Seri
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Coppel Camino del Seri', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CoppelCaminoDelSeri.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Costco Wholesale
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Costco Wholesale', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CostcoWholesale.png')), aglomeracionActual: 'AglomeracionAlta'),
                      ),
                      //CUM (Centro de Usos Multiples)
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'CUM (Centro de Usos Multiples)', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/CUM(CentroDeUsosMultiples).png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Evento Proximo
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Evento Proximo', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/EventoProximo.png')), aglomeracionActual: 'EventoProximo'),
                      ),
                      //Gallerias Mall Sonora
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Gallerias Mall Sonora', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/GalleriasMallSonora.png')), aglomeracionActual: 'AglomeracionMedia'),
                      ),
                      //Hospital General
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'HospitalGeneral', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/HospitalGeneral.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Instituto Tecnologico de Hermosillo
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Instituto Tecnologico de Hermosillo', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/InstitutoTecnologicoDeHermosillo.png')), aglomeracionActual: 'AglomeracionMedia'),
                      ),
                      //La Sauceda
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'La Sauceda', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/LaSauceda.png')), aglomeracionActual: 'SinReportes'),
                      ),
                      //Little Caesars Quiroga
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Little Caesars Quiroga', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/LittleCaesarsQuiroga.png')), aglomeracionActual: 'AglomeracionAlta'),
                      ),
                      //Evento Proximo Dos
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Evento Proximo Dos', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/EventoProximo.png')), aglomeracionActual: 'EventoProximo'),
                      ),
                      //Liverpool
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Liverpool', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/Liverpool.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //McDonalds
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'McDonalds', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/McDonalds.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Oxxo
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Oxxo', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/Oxxo.png')), aglomeracionActual: 'SinReportes'),
                      ),
                      //Sams Club Hermosillo
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Sams Club Hermosillo', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/SamsClubHermosillo.png')), aglomeracionActual: 'AglomeracionAlta'),
                      ),
                      //Sears
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Sears', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/Sears.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Secretaria de Relaciones Exteriores
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Secretaria de Relaciones Exteriores', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/SecretariaDeRelacionesExteriores.png')), aglomeracionActual: 'AglomeracionBaja'),
                      ),
                      //Soriana Encinas
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Soriana Encinas', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/Soriana Encinas.png')), aglomeracionActual: 'AglomeracionMedia'),
                      ),
                      //Universidad de Sonora
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Universidad de Sonora', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/UniversidadDeSonora.png')), aglomeracionActual: 'AglomeracionMedia'),
                      ),
                      //Walmart Boulervad Colosio
                      Padding(padding: const EdgeInsets.only(top: 10.0, left: 25.0, right: 25.0),
                        child: FormatoLugarBuscar(nombreLugar: 'Walmart Boulervad Colosio', imagenLugar: const Image(image: AssetImage('assets/img/formatoLugarImagen/WalmartBoulervadColosio.png')), aglomeracionActual: 'SinReportes'),
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    ); 
  }
}