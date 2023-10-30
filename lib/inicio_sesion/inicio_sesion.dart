import 'package:agora/inicio_general/inicio_general.dart';
import 'package:flutter/material.dart';

class InicioSesion extends StatelessWidget {
  InicioSesion({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(225, 227, 228, 1),
        body: ListView(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    Image(image: AssetImage('assets/img/fondoAgora.png'), width: double.infinity, height: 373, fit: BoxFit.cover,),
                    Container(width: double.infinity, height: 373,
                      decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Color(0x00F89470)], begin: Alignment(0.00, -1.00), end: Alignment(0, 1),),),
                      child: Center(child: Image(image: AssetImage('assets/img/logoAgora.png'), width: 244.0, height: 146.0, fit: BoxFit.cover),),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 347.0), child: Container(width: double.infinity, height: 50,
                        decoration: ShapeDecoration(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)), shadows: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.098), blurRadius: 20, offset: Offset(0, 4), spreadRadius: 0,)]),
                        child: Center(child: Text(
                            'Iniciar Sesion',
                            style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0, fontWeight: FontWeight.w600)
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //Apartados Insertar Datos Usuario
            Padding(padding: EdgeInsets.only(top: 29.0), child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  //Campo Nombre de Usuario
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: userController,
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF89470), width: 2.0,),),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF45922), width: 2.0,),),
                        labelText: "Usuario",
                        labelStyle: const TextStyle(color: Color(0xFFF89470), fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                        floatingLabelStyle: const TextStyle(color: Color(0xFFF45922), fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 0.0),
                        ),
                      ),
                    ),
                  ),
                  //Campo Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: userController,
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF89470), width: 2.0,),),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF45922), width: 2.0,),),
                        labelText: "Contraseña",
                        labelStyle: const TextStyle(color: Color(0xFFF89470), fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                        floatingLabelStyle: const TextStyle(color: Color(0xFFF45922), fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
                        ),
                      ),
                    ),
                  ),
                  //Boton Inicio Sesion
                  Padding(padding: EdgeInsets.only(bottom: 39.0), child: Container(width: 156.0, height: 48.0,
                      child: FilledButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InicioMapa()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(244, 89, 34, 1)), 
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                          elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return 4.0; // Cambiar la elevación cuando se presiona el botón
                            }
                              return 0.0; // Elevación por defecto cuando no se está presionando el botón
                            }
                          ),
                        ),
                        child: Text('Iniciar', style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.white),),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        )
      );
  }
}