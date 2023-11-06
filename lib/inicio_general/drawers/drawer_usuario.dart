import 'package:agora/overlays/overlay_usuario/overlay_usuario.dart';
import 'package:flutter/material.dart';

class DrawerUsuario extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Center(
        child:  Material(
          borderRadius: BorderRadius.circular(15.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: OverlayUsuario(),
        )
      ),
    );
  }
}