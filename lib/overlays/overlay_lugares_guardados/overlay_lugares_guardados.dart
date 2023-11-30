import 'package:agora/botones/boton_secundario.dart';
import 'package:agora/overlays/overlay_lugares_guardados/boton_lugar_mapa.dart';
import 'package:agora/pantalla_lugar/aglomeracion_actual.dart';
import 'package:expansion_tile_group/expansion_tile_group.dart';
import 'package:flutter/material.dart';

class OverlayLugaresGuardados extends StatelessWidget {
  const OverlayLugaresGuardados({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(width: 365.0, height: 654.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.0),
        color: const Color.fromRGBO(225, 227, 228, 1),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(left: 0, top: 174.0,
            child: Container(width: 365.0, height: 393.0,
              decoration: const BoxDecoration(color: Colors.transparent),
              child: ListView(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                padding: const EdgeInsets.symmetric(horizontal: 17.0, vertical: 20.0),
                children: [
                  ExpansionTileGroup(
                    toggleType: ToggleType.expandOnlyCurrent,
                    spaceBetweenItem: 20.0,
                        children: [
                          
                          //Formato Lugar CarlsJr
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/CarlsJr.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('CarlsJr', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'AglomeracionAlta')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),

                          //Formato Lugar Costco Wholesale
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/CostcoWholesale.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('Costco Wholesale', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'AglomeracionAlta')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),

                          //Formato Lugar Instituto Tecnologico de Hermosillo
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/InstitutoTecnologicoDeHermosillo.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('Instituto Tecnologico de Hermosillo', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'AglomeracionMedia')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),

                          //Formato Lugar Little Caesars Quiroga
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/LittleCaesarsQuiroga.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('Little Caesars Quiroga', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'AglomeracionMedia')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),

                          //Formato Lugar Oxxo
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/Oxxo.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('Oxxo', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'SinReportes')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),

                          //Formato Lugar Walmart Boulevard Colosio
                          ExpansionTileItem(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.white,
                              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 4.0, offset: Offset(0.0, 4.0))]
                            ),
                            leading: Padding(padding: const EdgeInsets.only(left: 15.0),
                              child: Container(width: 45.0, height: 45.0,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0)),
                                child: Material(
                                  borderRadius: BorderRadius.circular(50.0),
                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                    child: Image(image: AssetImage('assets/img/formatoLugarImagen/WalmartBoulevardColosio.png'), fit: BoxFit.cover)
                                ),
                              ),
                            ),
                            title: Container(width: 260.0, height: 53.0,
                              child: const Row(
                                children: [
                                  Expanded(
                                    child: Text('Walmart Boulevard Colosio', maxLines: 2, overflow: TextOverflow.ellipsis,
                                      style: const TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                                  ),
                                ],
                              ),
                            ), 
                            iconColor: const Color.fromRGBO(244, 89, 34, 1),
                            collapsedIconColor: const Color.fromRGBO(244, 89, 34, 1),
                            children: [
                              Padding(padding: const EdgeInsets.only(top: 10.0, bottom: 26.0, left: 31.0, right: 31.0),
                                child: Container(width: 238.0, height: 56.0,
                                  decoration: const BoxDecoration(color: Colors.transparent),
                                  child: AglomeracionActual(aglomeracionTipo: 'SinReportes')),
                              ),
                              const Padding(padding: EdgeInsets.only(bottom: 10.0, left: 31.0, right: 31.0),
                                child: BotonLugarMapa()
                              )
                            ]
                          ),
                      ]
                  ),
                ],
              ),             
            )
          ),
          Positioned(left: -5.0,
            child: Container(width: 375.0, height: 174.0,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0), color: Colors.white),
              child: Column(
                children: [
                  const Padding(padding: const EdgeInsets.only(top: 19.0, bottom: 19.0),
                    child: Text(
                      'Guardados', style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0),
                    ),
                  ),
                  Container(width: 300.0, height: 84.0,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text('Guarda tus destinos favoritos y mantente al tanto de la densidad de personas en tiempo real para planificar tus visitas de manera más informada.', textAlign: TextAlign.center , maxLines: 4, overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(left: -5.0, top: 567.0,
            child: 
            Container(width: 375.0, height: 87.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15.0), color: Colors.white,
                boxShadow: [BoxShadow(blurRadius: 20.0, offset: Offset(5.0, 0.0), color: Colors.black.withOpacity(0.05))]
              ),
              child: Center(
                child: BotonSecundario(
                  nombreBoton: 'Cerrar', 
                  iconoBoton: const Icon(Icons.keyboard_arrow_left_rounded), 
                  onPressed: () {Navigator.of(context).pop();},
                  anchoBoton: 233.0,
                  alturaBoton: 47.0,
                  distanciaIcono: 17.0,
                  distanciaNombre: 35.0,
                ),
              ),
            )
          )
        ],
      ),
    );
  }
}