import 'package:flutter/material.dart';
import 'package:avatar_glow/avatar_glow.dart';

class MarcadorUsuario extends StatefulWidget {
  const MarcadorUsuario({super.key});

  @override
  State<MarcadorUsuario> createState() => _MarcadorUsuarioState();
}

class _MarcadorUsuarioState extends State<MarcadorUsuario> {
  @override
  Widget build(BuildContext context) {
    return AvatarGlow(
      glowColor: const Color.fromRGBO(244, 90, 34, 1), 
      endRadius: 30.0,
      showTwoGlows: true,
      animate: true,
      repeat: true,
      duration: const Duration(milliseconds: 2000),
      child: Container(width: 25.0, height: 25.0,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.2), blurRadius: 10)]
        ),
        child: Center(
          child: Container(width: 20.0, height: 20.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: const Color.fromRGBO(244, 90, 34, 1)
            ),
          ),
        ),
      ),
    );
  }
}