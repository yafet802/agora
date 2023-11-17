import 'package:agora/cambiar_foto_perfil/cambiar_foto_perfil.dart';
import 'package:agora/inicio_general/inicio_general.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';
import 'package:agora/overlay/apartado_usuario.dart';
import 'package:agora/overlay/overlay_menu.dart';
import 'package:agora/pantalla_lugar/tabbar_reportes_otros.dart';
import 'package:agora/prueba_widgets.dart';
import 'package:agora/registro/registro.dart';
import 'package:agora/reportar_solicitar/boton_enviar.dart';
import 'package:agora/reportar_solicitar/reportar_aglomeracion/reportar_aglomeracion.dart';
import 'package:agora/reportar_solicitar/reportar_aglomeracion/seleccionar_aglomeracion.dart';
import 'package:agora/reportar_solicitar/solicitar_reporte/solicitar_reporte.dart';
import 'package:agora/sugerencias/sugerencias.dart';
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

