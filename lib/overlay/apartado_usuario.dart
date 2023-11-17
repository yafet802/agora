import 'package:agora/cambiar_foto_perfil/cambiar_foto_perfil.dart';
import 'package:flutter/material.dart';

class ApartadoUsuario extends StatefulWidget {
  const ApartadoUsuario({super.key});

  @override
  State<ApartadoUsuario> createState() => _ApartadoUsuarioState();
}

class _ApartadoUsuarioState extends State<ApartadoUsuario> {
  @override
  Widget build(BuildContext context) {
    return Container(width: 375.0, height: 126.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0), 
          color: const Color.fromRGBO(103, 103, 103, 1), 
          boxShadow: [BoxShadow(blurRadius: 10.0, color: Colors.black.withOpacity(0.30))]
        ),
        child: Stack(
          children: [
            Positioned(top: 18.0, left: 30.0, 
              child: Stack(
                children: [
                  Container(width: 90.0, height: 90.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(100), color: Colors.transparent),
                    child: Material(
                      borderRadius: BorderRadius.circular(100.0), 
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => CambiarFotoPerfil()));},
                        splashFactory: NoSplash.splashFactory,
                        child: const Center(child: Image(image: AssetImage('assets/img/fotoPerfil.png'), width: 80.0, height: 80.0,)),
                      ),
                    ),
                  ),
                  Positioned(left: 50.0, top: 50.0, child: Container(width: 40, height: 40, 
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(100.0)),
                    child: const Center(child: Icon(Icons.create_rounded, color: Color.fromRGBO(244, 89, 34, 1))),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(top: 39.0, left: 140.0, 
              child: Material(
                color: Colors.transparent,
                child: Container(width: 210.0, height: 55.0,
                  child: const Stack(
                    children: [
                      Positioned(left: 0.0, top: 0.0, child: Text(
                        'Dogtor',
                        style: TextStyle(fontSize: 20.0, color: Colors.white, fontFamily: 'Poppins')),
                      ),
                      Positioned(left: 0.0, top: 31.0, child: Text(
                        'DogtorTLN@carls.jr.com',
                        style: TextStyle(fontSize: 16.0, color: Color.fromRGBO(248, 148, 112, 1),fontFamily: 'Poppins')),
                      ),
                    ],
                  ),
                ),
              )
            )
          ],
        )
      );
  }
}