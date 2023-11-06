import 'package:agora/reportar_solicitar/boton_cancelar.dart';
import 'package:agora/reportar_solicitar/boton_enviar.dart';
import 'package:flutter/material.dart';

class SolicitarReporte extends StatelessWidget {
  const SolicitarReporte({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 227, 228, 1),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.0, 
                    blurRadius: 20.0,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text('Solicitar Reporte', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0),),
            leading: IconButton(
                onPressed: () {Navigator.of(context).pop();},
                icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 22, vertical: 22),
                  child: Container(width: double.infinity, height: 110.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0)]),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          'Aquí puedes solicitar informes en tiempo real sobre la densidad de personas en un lugar específico. Nuestra comunidad de usuarios estará encantada de ayudarte a tomar decisiones informadas sobre tus destinos.',
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: 'Poppins',),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 22.0), child: Container(width: 268.0, height: 47.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(50.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0)]),
                    child: Center(child: Text('Barra Busqueda', style: TextStyle(color: Colors.black, fontSize: 16.0))),
                  )
                ),
                const Padding(padding: EdgeInsets.only(bottom: 45.0),
                  child: BotonEnviar(),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(width: 10.0, height: 10.0),
                    Padding(padding: EdgeInsets.only(left: 100.0), child: BotonCancelar())
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}