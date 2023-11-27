import 'package:agora/botones/boton_secundario.dart';
import 'package:agora/sugerencias/deslizar_enviar.dart';
import 'package:flutter/material.dart';

class Sugerencias extends StatelessWidget {
  const Sugerencias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 227, 228, 1),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white, 
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0, offset: const Offset(0.0, 4.0))],
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0))
            ),
          ),
          toolbarHeight: 78.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text('Reportar Errores y Comentarios', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0), maxLines: 2,),
          leading: IconButton(
            onPressed: () {Navigator.of(context).pop();},
            icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1))
          )
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Padding(padding: const EdgeInsets.only(top: 18.0, bottom: 20.0),
                  child: Container(width: 316.0, height: 120.0,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text('Aquí puedes contribuir a mejorar la precisión de la información sobre la aglomeración de personas en los lugares seleccionados. Tu retroalimentación es esencial para crear una experiencia más precisa y útil para todos los usuarios.', textAlign: TextAlign.justify , maxLines: 6, overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  )
                ),
                Padding(padding: const EdgeInsets.only(left: 22.0, right: 22.0, bottom: 22.0), 
                  child: TextField(
                    maxLines: null, // Permite múltiples líneas de texto
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                      hintText: 'Escribe aqui tu Sugerencia...',
                      hintStyle: const TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 1.5)),
                      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15.0), borderSide: const BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 1.5)),
                    ),
                  ) 
                ),
                const Padding(padding: EdgeInsets.only(bottom: 45.0),
                  child: DeslizarEnviar(),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: const EdgeInsets.only(left: 110.0),
                      child: BotonSecundario(
                        nombreBoton: 'Cancelar', 
                        iconoBoton: const Icon(Icons.cancel_rounded), 
                        onPressed: () {Navigator.of(context).pop();},
                        anchoBoton: 160.0,
                        alturaBoton: 47.0,
                        distanciaIcono: 0.0,
                        distanciaNombre: 10.0,
                      ),
                    )
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}