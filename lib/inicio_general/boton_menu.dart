import 'package:agora/overlays/overlay_menu/overlay_menu.dart';
import 'package:flutter/material.dart';

class BotonMenu extends StatelessWidget {
  const BotonMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 47,
      height: 47,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
        shadows: const [
          BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.2),
            blurRadius: 10,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: Material(
        clipBehavior: Clip.antiAliasWithSaveLayer,
        borderRadius: BorderRadius.circular(100),
        child: FilledButton(
              onPressed: () {
                 OverlayMenu();
              },
              child: Center(child: Icon(Icons.menu_rounded, color: Color.fromRGBO(244, 89, 34, 1))))
      )
    );
  }
}
