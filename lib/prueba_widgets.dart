import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

//
//Archivo de pruebas
//

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(225, 227, 228, 1),
      body: Center(
        child: AvatarGlow(
          glowColor: const Color.fromRGBO(244, 90, 34, 1), 
          endRadius: 50.0,
          animate: true,
          repeat: true,
          duration: const Duration(milliseconds: 2000),
          child: Container(width: 40.0, height: 40.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50.0),
            ),
            child: Center(
                child: Container(width: 30.0, height: 30.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color.fromRGBO(244, 90, 34, 1)
                  ),
                ),
              ),
          ),
        )
      ),
    );
  }
}