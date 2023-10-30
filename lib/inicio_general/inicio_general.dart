import 'package:agora/inicio_general/barra_busqueda(provisional).dart';
import 'package:agora/inicio_general/boton_filtrar_mapa.dart';
import 'package:agora/inicio_general/boton_menu.dart';
import 'package:agora/overlays/overlay_filtro/overlay_filtro.dart';
import 'package:agora/overlays/overlay_menu/overlay_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

const MAPBOX_ACCES_TOKEN = 'pk.eyJ1IjoieWFmZXQ4MDIiLCJhIjoiY2xvYms4cnRmMG15MzJqcjF6cWhmd2tlcCJ9.EzhJOPV38c6O6RzDTn7JCA';

final myPosition = LatLng(29.096722, -110.992343);

class InicioMapa extends StatelessWidget {
  const InicioMapa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Center(
        child:  Material(
          borderRadius: BorderRadius.circular(15.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: OverlayMenu(),
        )
      ),
      endDrawer: Center(
        child:  Material(
          borderRadius: BorderRadius.circular(15.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: OverlayFiltro(),
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
                additionalOptions: {
                  'accessToken': MAPBOX_ACCES_TOKEN,
                  'id': 'mapbox/streets-v12',
                },
              )
            ],
          ),
          Positioned(top: 14, left: 14, child: Container(
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
                child: Builder(
                  builder: (context) {
                    return InkWell(
                          onTap: () {
                            Scaffold.of(context).openDrawer();
                          },
                          splashColor: Color.fromRGBO(244, 90, 34, 0.274),
                          child: Center(child: Icon(Icons.menu_rounded, color: Color.fromRGBO(244, 89, 34, 1))));
                  }
                )
              )
            )
          ),
          Positioned(top: 14, right: 14, child: Container(width: 47, height: 47,
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
                child: Builder(
                  builder: (context) {
                    return InkWell(
                          onTap: () {
                            Scaffold.of(context).openEndDrawer();
                          },
                          splashColor: Color.fromRGBO(244, 90, 34, 0.274),
                          child: Center(child: Icon(Icons.filter_alt_rounded, color: Color.fromRGBO(244, 89, 34, 1))));
                  }
                )
              )
            ),
          ),
        ],
      ),
    );
  }
}