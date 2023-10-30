import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
   const MyHomePage({super.key});

   @override
   Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title:  Text('a'),
      ),
      body:  const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Programa para probar widgets')
          ],
        ),
      ),
    );
   }
}