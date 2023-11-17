import 'package:agora/pantalla_lugar/aglomeracion_actual.dart';
import 'package:agora/pantalla_lugar/boton_guardar.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros.dart';
import 'package:flutter/material.dart';

class LugarBottomSheet extends StatelessWidget {

  final String nombreLugar;
  final Image imagenLugar;
  final String aglomeracionActual;

  LugarBottomSheet({required this.nombreLugar, required this.imagenLugar, required this.aglomeracionActual});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Container(width: double.infinity, height: 172.0,
          decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
          child: Material(clipBehavior: Clip.antiAliasWithSaveLayer, borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)), 
          child: Image(image: imagenLugar.image, fit: BoxFit.cover))
        ),
        Container(width: double.infinity, height: 195.0,
          decoration: const BoxDecoration(color: Colors.white),
          child: Column(
            children: [
              Padding(padding: const EdgeInsets.all(20.0),
                child: Container(width: double.infinity, height: 53.0,
                  child: Stack(
                    children: [
                      Positioned(top: 0.0, left: 0.0, 
                        child: Container(width: 260.0, height: 53.0,
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(nombreLugar, maxLines: 2, overflow: TextOverflow.ellipsis,
                                style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0, fontWeight: FontWeight.w600)),
                              ),
                            ],
                          ),
                        ), 
                      ),
                      Positioned(top: 0.0, right: 0.0, child: BotonGuardar())
                    ],
                  )
                ),
              ),
              Padding(padding: const EdgeInsets.only(bottom: 25.0), child: Container(width: double.infinity, height: 0.0,
                  decoration: BoxDecoration(color: const Color.fromRGBO(225, 227, 228, 1), border: Border.all(color: const Color.fromRGBO(225, 227, 228, 1)))
                )
              ),
              Column(children: [AglomeracionActual(aglomeracionTipo: aglomeracionActual)])
            ],
          ),
        ),
        const TabsAgora()
      ],
    );
  }
}