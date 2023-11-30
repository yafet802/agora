import 'package:agora/botones/boton_inicio.dart';
import 'package:agora/inicio_general/marcador_lugar.dart';
import 'package:agora/overlays/overlay_cuenta_agora/overlay_menu.dart';
import 'package:agora/overlays/overlay_lugares_guardados/overlay_lugares_guardados.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const MAPBOX_ACCES_TOKEN = 'pk.eyJ1IjoieWFmZXQ4MDIiLCJhIjoiY2xvYms4cnRmMG15MzJqcjF6cWhmd2tlcCJ9.EzhJOPV38c6O6RzDTn7JCA';

final myPosition = LatLng(29.096722, -110.992343);

class InicioMapa extends StatefulWidget {

  @override
  State<InicioMapa> createState() => _InicioMapaState();
}

class _InicioMapaState extends State<InicioMapa> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Center(
        child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.none,
          child: OverlayMenu()
        )
      ),
      endDrawer: const Center(
        child: Material(
          color: Colors.transparent,
          clipBehavior: Clip.none,
          child: OverlayLugaresGuardados()
        )
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: myPosition,
              minZoom: 5,
              maxZoom: 25,
              zoom: 18,
            ),
            nonRotatedChildren: [
              TileLayer(
                urlTemplate: 'https://api.mapbox.com/styles/v1/{id}/tiles/{z}/{x}/{y}?access_token={accessToken}',
                additionalOptions: const {
                  'accessToken': MAPBOX_ACCES_TOKEN,
                  'id': 'mapbox/streets-v12',
                },
              ),
              //Marcadores de Lugares 
              MarkerLayer(
                markers: [
                  //Coppel Camino del Seri
                  Marker(point: LatLng(29.062475, -110.990109), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Coppel Camino del Seri', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CoppelCaminoDelSeri.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CoppelCaminoDelSeriDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CoppelCaminoDelSeriTres.png')),
                      );
                    }
                  ),
                  //Hospital General
                  Marker(point: LatLng(29.110245, -110.951004), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Hospital General', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/HospitalGeneral.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/HospitalGeneralDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/HospitalGeneralTres.png')),
                      );
                    }
                  ),
                  //CUM (Centro de Usos Multiples)
                  Marker(point: LatLng(29.108374, -110.993310), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'CUM (Centro de Usos Multiples)', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CUM(CentroDeUsosMultiples).png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CUM(CentroDeUsosMultiples)Dos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CUM(CentroDeUsosMultiples)Tres.png')),
                      );
                    }
                  ),
                  //AutoZone Refacciones
                  Marker(point: LatLng(29.110527, -111.023657), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'AutoZone Refacciones', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/AutoZoneRefacciones.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/AutoZoneRefaccionesDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/AutoZoneRefaccionesTres.png')),
                      );
                    }
                  ),
                  //Secretaria de Relaciones Exteriores
                  Marker(point: LatLng(29.068538, -110.958673), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Secretaria de Relaciones Exteriores', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/SecretariaDeRelacionesExteriores.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/SecretariaDeRelacionesExterioresDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/SecretariaDeRelacionesExterioresTres.png')),
                      );
                    }
                  ),
                  //Cinemex Encinas
                  Marker(point: LatLng(29.091635, -110.992965), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Cinemex Encinas', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CinemexEncinas.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CinemexEncinasDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CinemexEncinasTres.png')),
                      );
                    }
                  ),
                  //Aeropuerto Internacional
                  Marker(point: LatLng(29.091227, -111.051162), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Aeropuerto Internacional', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/AeropuertoInternacional.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/AeropuertoInternacionalDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/AeropuertoInternacionalTres.png')),
                      );
                    }
                  ),
                  //McDonalds
                  Marker(point: LatLng(29.085905, -110.986434), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'McDonalds', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/McDonalds.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/McDonaldsDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/McDonaldsTres.png')),
                      );
                    }
                  ),
                  //Sears
                  Marker(point: LatLng(29.067352, -110.949985), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Sears', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/Sears.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/SearsDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/SearsTres.png')),
                      );
                    }
                  ),
                  //Liverpool
                  Marker(point: LatLng(29.087197, -110.963617), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionBaja.png')), 
                        nombreLugar: 'Liverpool', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/Liverpool.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/LiverpoolDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/LiverpoolTres.png')),
                      );
                    }
                  ),
                  //Isnstituto Tecnologico de Hermosillo
                  Marker(point: LatLng(29.098564, -110.997680), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png')), 
                        nombreLugar: 'Isnstituto Tecnologico de Hermosillo', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/ITH(InstitutoTecnologicoDeHermosillo).png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/ITH(InstitutoTecnologicoDeHermosillo)Dos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/ITH(InstitutoTecnologicoDeHermosillo)Tres.png')),
                      );
                    }
                  ),
                  //Universidad de Sonora
                  Marker(point: LatLng(29.083130, -110.960355), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png')), 
                        nombreLugar: 'Universidad de Sonora', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/UNI(UniversidadDeSonora).png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/UNI(UniversidadDeSonora)Dos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/UNI(UniversidadDeSonora)Tres.png')),
                      );
                    }
                  ),
                  //Soriana Encinas
                  Marker(point: LatLng(29.092912, -110.992992), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png')), 
                        nombreLugar: 'Soriana Encinas', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/SorianaEncinas.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/SorianaEncinasDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/SorianaEncinasTres.png')),
                      );
                    }
                  ),
                  //Cinepolis Hermosillo
                  Marker(point: LatLng(29.088458, -110.965915), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png')), 
                        nombreLugar: 'Cinepolis Hermosillo', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CinepolisHermosillo.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CinepolisHermosilloDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CinepolisHermosilloTres.png')),
                      );
                    }
                  ),
                  //Gallerias Mall Sonora
                  Marker(point: LatLng(29.065759, -110.950952), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionMedia.png')), 
                        nombreLugar: 'Gallerias Mall Sonora', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/GalleriasMallSonora.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/GalleriasMallSonoraDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/GalleriasMallSonoraTres.png')),
                      );
                    }
                  ),
                  //Costco Wholesale
                  Marker(point: LatLng(29.082676, -110.979643), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionAlta.png')), 
                        nombreLugar: 'Costco Wholesale', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CostcoWholesale.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CostcoWholesaleDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CostcoWholesaleTres.png')),
                      );
                    }
                  ),
                  //Little Caesars Quiroga
                  Marker(point: LatLng(29.131509, -111.022956), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionAlta.png')), 
                        nombreLugar: 'Little Caesars Quiroga', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/LittleCeasarsQuiroga.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/LittleCeasarsQuirogaDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/LittleCeasarsQuirogaTres.png')),
                      );
                    }
                  ),
                  //CarlsJr
                  Marker(point: LatLng(29.105298, -110.993857), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionAlta.png')), 
                        nombreLugar: 'CarlsJr', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/CarlsJr.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/CarlsJrDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/CarlsJrTres.png')),
                      );
                    }
                  ),
                  //Sams Club Hermosillo
                  Marker(point: LatLng(29.133128, -110.954410), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/aglomeracionAlta.png')), 
                        nombreLugar: 'Sams Club Hermosillo', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/SamsClub.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/SamsClubDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/SamsClubTres.png')),
                      );
                    }
                  ),
                  //La Sauceda
                  Marker(point: LatLng(29.072224, -110.924015), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/sinReportes.png')), 
                        nombreLugar: 'La Sauceda', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/LaSauceda.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/LaSaucedaDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/LaSaucedaTres.png')),
                      );
                    }
                  ),
                  //Oxxo
                  Marker(point: LatLng(29.121280, -111.034923), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/sinReportes.png')), 
                        nombreLugar: 'Oxxo', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/Oxxo.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/OxxoDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/OxxoTres.png')),
                      );
                    }
                  ),
                  //Walmart Boulevard Colosio
                  Marker(point: LatLng(29.082929, -111.020713), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/sinReportes.png')), 
                        nombreLugar: 'Walmart Boulevard Colosio', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/WalmartBoulevardColosio.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/WalmartBoulevardColosioDos.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/WalmartBoulevardColosioTres.png')),
                      );
                    }
                  ),
                  //EventoUno
                  Marker(point: LatLng(29.076209, -110.981468), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/eventoProximo.png')), 
                        nombreLugar: 'EventoUno', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                      );
                    }
                  ),
                  //EventoDos
                  Marker(point: LatLng(29.126526, -110.992867), 
                    builder: (context) {return MarcadorLugar(
                        iconoImagen: const Image(image: AssetImage('assets/img/iconoAglomeracion/eventoProximo.png')), 
                        nombreLugar: 'EventoDos', 
                        imagenLugar: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                        imagenLugarDos: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                        imagenLugarTres: const Image(image: AssetImage('assets/img/lugarImagen/EventoProximo.png')),
                      );
                    }
                  ),
                ],
              ),
            ],
          ),
          SafeArea(
            child: Stack(
              children: [
                Positioned(top: 14, left: 14, 
                  child: Container(width: 47, height: 47,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      shadows: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10)],
                    ),
                    child: Material(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.circular(50.0),
                      child: Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openDrawer();
                            },
                          splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
                          child: const Center(child: Icon(Icons.menu_rounded, color: Color.fromRGBO(244, 90, 34, 1))));
                        }
                      )
                    )
                  )
                ),
                Positioned(top: 14, right: 14, 
                  child: Container(width: 47, height: 47,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                      shadows: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10)],
                    ),
                    child: Material(
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      borderRadius: BorderRadius.circular(50.0),
                      child: Builder(
                        builder: (context) {
                          return InkWell(
                            onTap: () {
                              Scaffold.of(context).openEndDrawer();
                            },
                          splashColor: const Color.fromRGBO(244, 90, 34, 0.274),
                          child: const Center(child: Icon(Icons.bookmark_rounded, color: Color.fromRGBO(244, 90, 34, 1))));
                        }
                      )
                    )
                  )
                ),
              ],
            )
          )
        ],
      ),
    );
  }
}
