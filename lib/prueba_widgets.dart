import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

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
      appBar: AppBar(
        title: Text('Disabled Widget Example'),
      ),
      body: Center(
        child: Container(width: double.infinity, height: 172.0,
          decoration: const BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15))),
          child: const Material(clipBehavior: Clip.antiAliasWithSaveLayer, borderRadius: const BorderRadius.only(topRight: Radius.circular(15), topLeft: Radius.circular(15)), 
            child: ImageSlideshow(
              initialPage: 0,
              indicatorColor: Color.fromRGBO(244, 89, 34, 1),
              indicatorBackgroundColor: Color.fromRGBO(248, 148, 112, 0.8),
              indicatorRadius: 5.0,
              children: [
                Image(image: AssetImage('assets/img/lugarImagen/AeropuertoInternacional.png'), fit: BoxFit.cover),
                Image(image: AssetImage('assets/img/lugarImagen/AutoZoneRefacciones.png'), fit: BoxFit.cover),
                Image(image: AssetImage('assets/img/lugarImagen/CarlsJr.png'), fit: BoxFit.cover),
              ]
            )
          )
        ),
      ),
    );
  }
}