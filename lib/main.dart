import 'package:agora/inicio_general/inicio_general.dart';
import 'package:agora/inicio_general/seleccionar_aglomeracion_mapa.dart';
import 'package:agora/inicio_sesion/inicio_sesion.dart';
import 'package:agora/prueba_widgets.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:agora/firebase_options.dart';

void main() async {
  //inicializando firebase
  WidgetsFlutterBinding.ensureInitialized();
      await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform); 
     runApp(const MyApp());
}

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

