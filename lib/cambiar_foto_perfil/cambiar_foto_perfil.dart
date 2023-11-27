import 'package:agora/botones/boton.dart';
import 'package:flutter/material.dart';

class CambiarFotoPerfil extends StatefulWidget {
  const CambiarFotoPerfil({super.key});

  @override
  State<CambiarFotoPerfil> createState() => _CambiarFotoPerfilState();
}

class _CambiarFotoPerfilState extends State<CambiarFotoPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 227, 228, 1),
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white, 
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0, offset: Offset(0.0, 4.0))],
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0))
            ),
          ),
          toolbarHeight: 50.0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: const Text('Foto de Perfil', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0), maxLines: 2,),
          leading: IconButton(
            onPressed: () {Navigator.of(context).pop();},
            icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1))
          )
        ),
      body: ListView(
          children: [
            Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 18.0, bottom: 50.0),
                  child: Container(width: 316.0, height: 47.0,
                    child: const Row(
                      children: [
                        Expanded(
                          child: Text('Una foto te permitira saber cuando hayas accedido a la cuenta.', textAlign: TextAlign.center, maxLines: 2, overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 14.0, fontWeight: FontWeight.w600)),
                        ),
                      ],
                    ),
                  )
                ),
                Padding(padding: EdgeInsets.only(bottom: 40), child: Container(width: 270.0, height: 270.0,
                    decoration: BoxDecoration(border: Border.all(color: Colors.white, width: 4.0), borderRadius: BorderRadius.circular(500.0)),
                    child: Material(
                      borderRadius: BorderRadius.circular(500.0),
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Image(image: AssetImage('assets/img/hombreperro.png'), fit: BoxFit.cover)
                    ),
                  ),
                ),
                Padding(padding: EdgeInsets.only(bottom: 20.0),
                  child: Boton(
                    iconoBoton: Icon(Icons.edit_rounded), 
                    nombreBoton: 'Cambiar', 
                    colorBoton: Colors.white, 
                    iconoColor: Color.fromRGBO(103, 103, 103, 1), 
                    colorNombre: Color.fromRGBO(103, 103, 103, 1),
                    onPressed: null,
                  ),
                ),
                Boton(
                  iconoBoton: Icon(Icons.delete_rounded), 
                  nombreBoton: 'Quitar', 
                  colorBoton: Colors.white, 
                  iconoColor: Color.fromRGBO(103, 103, 103, 1), 
                  colorNombre: Color.fromRGBO(103, 103, 103, 1),
                  onPressed: null,
                )
              ],
            )
          ],
        )
    );
  }
}