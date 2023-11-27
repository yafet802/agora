import 'package:flutter/material.dart';

class CampoCapturaDato extends StatelessWidget {
  
  final TextEditingController nombreControlador;
  final String nombreCampo;
  bool? obscureText;

  CampoCapturaDato({
    required this.nombreControlador,
    required this.nombreCampo,
    this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: nombreControlador,
      obscureText: false,
      decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF89470), width: 2.0,),),
        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF45922), width: 2.0,),),
        labelText: nombreCampo,
        labelStyle: const TextStyle(color: Color(0xFFF89470), fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
        floatingLabelStyle: const TextStyle(color: Color(0xFFF45922), fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
        contentPadding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
      ),
    );
  }
}