import 'package:agora/inicio_general/inicio_general.dart';
import 'package:agora/registro/registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InicioSesion extends StatefulWidget {
  InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  
  bool obscureText = true;
  
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
                    const Image(image: AssetImage('assets/img/fondoAgora.png'), width: double.infinity, height: 373, fit: BoxFit.cover,),
                    Container(width: double.infinity, height: 373,
                      decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Color(0x00F89470)], begin: Alignment(0.00, -1.00), end: Alignment(0, 1),),),
                      child: const Center(child: Image(image: AssetImage('assets/img/logoAgora.png'), width: 244.0, height: 146.0, fit: BoxFit.cover),),
                    ),
                    Padding(padding: const EdgeInsets.only(top: 347.0), child: Container(width: double.infinity, height: 50,
                        decoration: ShapeDecoration(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)), shadows: [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.098), blurRadius: 20, offset: Offset(0, 4), spreadRadius: 0,)]),
                        child: const Center(child: Text(
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
                  Padding(padding: const EdgeInsets.only(bottom: 10.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: passwordController,
                        obscureText: obscureText,
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
                  //Boton Olvide la Contraseña y Mostrar Contraseña
                  Padding(padding: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {}, 
                          style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory, 
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent), 
                            overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent)
                          ), child: Text('Olvide la Contraseña', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(248, 148, 112, 1)))),
                        Transform.scale(scale: 0.8, child: CupertinoSwitch(activeColor: Color.fromRGBO(255, 83, 83, 1) , trackColor: Color.fromRGBO(61, 191, 0, 1), value: obscureText, onChanged: (value) {setState(() {obscureText = value;});})),
                        Icon(obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: Color.fromRGBO(248, 148, 112, 1), size: 30)
                      ],
                    )
                  ),
                  //Boton Inicio Sesion
                  Padding(padding: EdgeInsets.only(bottom: 39.0), child: Container(width: 156.0, height: 48.0,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(50.0), boxShadow: [BoxShadow(color: Color.fromRGBO(248, 148, 112, 1), offset: Offset(0, 4), blurRadius: 10.0)]),
                      child: FilledButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InicioMapa()));},
                        style: ButtonStyle(
                          backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(244, 89, 34, 1)), 
                          shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                          shadowColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(248, 148, 112, 1)),
                          splashFactory: NoSplash.splashFactory,
                          elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return 8.0; // Cambiar la elevación cuando se presiona el botón
                            }
                              return 4.0; // Elevación por defecto cuando no se está presionando el botón
                            }
                          ),
                        ),
                        child: Text('Iniciar', style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.white),),
                      ),
                    ),
                  ),
                  //Recuadro Registrar
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Padding(padding: EdgeInsets.only(right: 10.0),
                        child: Text('¿No tienes Cuenta?', style: TextStyle(fontSize: 14.0, fontFamily: 'Poppins')),
                      ),
                      TextButton(
                        onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => Registro()));}, 
                        style: const ButtonStyle(
                          splashFactory: NoSplash.splashFactory, 
                          backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent), 
                          overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent)
                        ), child: Text('Registrate', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(248, 148, 112, 1)))),
                    ],
                  )
                ],
              ),
            ),
          ],
        )
      );
  }
}