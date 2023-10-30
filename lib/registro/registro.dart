import 'package:flutter/material.dart';

class Registro extends StatelessWidget {
  Registro({super.key});

  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(229, 2279, 229, 1),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.098), // Color de la sombra
                    spreadRadius: 0.0, // Extensión de la sombra
                    blurRadius: 20.0, // Desenfoque de la sombra
                    offset: Offset(0.0, 4.0), // Desplazamiento en (x, y)
                  ),
                ],
              ),
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text('Registro', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0),),
            leading: IconButton(
                onPressed: () {},
                icon: Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1),))),
        body: ListView(
          children: [
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
                  //Campo Correo Electronico
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: userController,
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF89470), width: 2.0,),),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color(0xFFF45922), width: 2.0,),),
                        labelText: "Correo Electronico",
                        labelStyle: const TextStyle(color: Color(0xFFF89470), fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                        floatingLabelStyle: const TextStyle(color: Color(0xFFF45922), fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
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
                  //Campo Confirmar Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 75.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: userController,
                        decoration: InputDecoration(enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color.fromRGBO(248, 148, 112, 1), width: 2.0,),),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(40), borderSide: const BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0,),),
                        labelText: "Confirmar Contraseña",
                        labelStyle: const TextStyle(color: Color.fromRGBO(248, 148, 112, 1), fontWeight: FontWeight.w500, fontFamily: 'Poppins'),
                        floatingLabelStyle: const TextStyle(color: Color.fromRGBO(244, 89, 34, 1), fontWeight: FontWeight.w600, fontFamily: 'Poppins'),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 18.0),
                        ),
                      ),
                    ),
                  ),
                  //Boton Registrar
                  Padding(padding: EdgeInsets.only(bottom: 39.0), child: Container(width: 156.0, height: 48.0,
                      child: FilledButton(
                        onPressed: () {},
                        style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(244, 89, 34, 1)), shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0)))),
                        child: Text('Registrar', style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.white),),
                      ),
                    ),
                  ),
                  //Separacion
                  Padding(padding: const EdgeInsets.only(bottom: 22.0), child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.only(right: 15.0), child: Container(width: 150.0, height: 3.0,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(100.0), border: Border.all(color: Colors.black, width: 0.1),),
                          ),
                        ),
                        Container(width: 12, height: 12,
                          decoration: BoxDecoration(color: Colors.transparent, borderRadius: BorderRadius.circular(100.0), border: Border.all(color: Colors.black, width: 2.0),
                          ),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 15.0), child: Container(width: 150.0, height: 3.0,
                            decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(100.0), border: Border.all(color: Colors.black, width: 0.1),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Botones Registros Opcionales
                  Column(
                    children: [
                      //Boton Iniciar con Facebook
                      Padding(padding: EdgeInsets.only(bottom: 8.0), child: Container(width: 268, height: 47,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white), shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0)))), 
                            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 20, height: 20,
                                    child: Image(image: AssetImage('assets/img/logoFacebook.png'))
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 14.0, vertical: 0.0),
                                    child: Text('Inicio con Facebook', style: TextStyle(color: Color.fromRGBO(68, 114, 196, 1), fontFamily: 'Poppins', fontSize: 13.0),)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Boton Iniciar con Google
                      Padding(padding: EdgeInsets.only(bottom: 8.0), child: Container(width: 268, height: 47,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.white), shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0)))), 
                            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 20, height: 20,
                                    child: Image(image: AssetImage('assets/img/logoGoogle.png'))
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 0.0),
                                    child: Text('Inicio con Google', style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontFamily: 'Poppins', fontSize: 13.0),)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      //Boton Inciar con Apple
                      Padding(padding: EdgeInsets.only(bottom: 0.0), child: Container(width: 268, height: 47,
                          child: FilledButton(
                            onPressed: () {},
                            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.black), shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0)))), 
                            child: const Padding(padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 0.0),
                              child: Row(
                                children: [
                                  SizedBox(width: 20, height: 20,
                                    child: Image(image: AssetImage('assets/img/logoApple.png'))
                                  ),
                                  Padding(padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                                    child: Text('Continuar con Apple', style: TextStyle(color: Colors.white, fontFamily: 'Poppins', fontSize: 13.0),)
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        )
      );
  }
}