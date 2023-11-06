import 'package:agora/overlays/overlay_menu/overlay_menu.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: Center(
        child:  Material(
          borderRadius: BorderRadius.circular(15.0),
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: OverlayMenu(),
        )
      ),
    );
  }
}