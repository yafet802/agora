import 'package:agora/reportar_solicitar/boton_cancelar.dart';
import 'package:agora/reportar_solicitar/boton_enviar.dart';
import 'package:flutter/material.dart';

class Sugerencias extends StatelessWidget {
  const Sugerencias({super.key});

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
            title: const Text('Sugerencias', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0)),
            leading: IconButton(
                onPressed: () {Navigator.of(context).pop();},
                icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))),
      body: ListView(
          children: [
            Column(
              children: [
                const Padding(padding: const EdgeInsets.only(top: 22.0, left: 42, bottom: 10),
                  child: Row(
                    children: [
                      Text('Reportar Errores y Comentarios',  style: TextStyle(color: Colors.black, fontSize: 16.0, fontFamily: 'Poppins')),
                    ],
                  )
                ),
                Padding(padding: EdgeInsets.only(left: 22, right: 22, bottom: 22),
                  child: Container(width: double.infinity, height: 110.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0)]),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          'Aquí puedes contribuir a mejorar la precisión de la información sobre la aglomeración de personas en los lugares seleccionados. Tu retroalimentación es esencial para crear una experiencia más precisa y útil para todos los usuarios.',
                          style: TextStyle(color: Colors.black, fontSize: 12.0, fontFamily: 'Poppins'),
                      ),
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 22.0, right: 22.0, bottom: 22.0), 
                  child: TextField(
                    maxLines: null, // Permite múltiples líneas de texto
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Escribe aqui tu Sugerencia...',
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Color.fromRGBO(248, 148, 112, 1), width: 2.0)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
                    ),
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