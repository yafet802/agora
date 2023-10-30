import 'package:agora/inicio_general/barra_busqueda(provisional).dart';
import 'package:agora/inicio_general/boton_menu.dart';
import 'package:agora/inicio_general/inicio_general.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';
import 'package:agora/overlays/overlay_filtro/overlay_filtro.dart';
import 'package:agora/overlays/overlay_menu/overlay_menu.dart';
import 'package:agora/overlays/overlay_usuario/overlay_usuario.dart';
import 'package:agora/pantalla_lugar/aglomeracion_media/ith.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros.dart';
import 'package:agora/prueba_widgets.dart';
import 'package:agora/registro/registro.dart';
import 'package:flutter/material.dart';

void main() {runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agora',
      theme: ThemeData(
        fontFamily: 'Poppins',
        useMaterial3: true,
      ),
      home: InicioSesion(),
      debugShowCheckedModeBanner: false,
    );
  }
}

