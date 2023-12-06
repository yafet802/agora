import 'package:agora/botones/boton_principal.dart';
import 'package:agora/campos_captura_datos/campo_captura_dato.dart';
import 'package:agora/inicio_general/inicio_general.dart';
import 'package:agora/registro/registro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:agora/firebase/auth.dart';
import 'package:agora/firebase/firebase_login.dart';


class InicioSesion extends StatefulWidget {
  InicioSesion({super.key});

  @override
  State<InicioSesion> createState() => _InicioSesionState();
}

class _InicioSesionState extends State<InicioSesion> {
  
  final _formKey = GlobalKey<FormState>();
  
  bool obscureText = true;
  
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(225, 227, 228, 1),
        body: ListView(
          children: [
            Stack(
              children: [
                Stack(
                  children: [
                    const Image(image: AssetImage('assets/img/fondoAgora.png'), width: double.infinity, height: 373, fit: BoxFit.cover,),
                    Container(width: double.infinity, height: 373,
                      decoration: const BoxDecoration(gradient: LinearGradient(colors: [Colors.black, Color(0x00F89470)], begin: Alignment(0.00, -1.00), end: Alignment(0, 1),),),
                      child: const Center(child: Image(image: AssetImage('assets/img/LogoAgoraNuevo2.png'), width: 244.0, height: 164.24, fit: BoxFit.cover))
                    ),
                    Padding(padding: const EdgeInsets.only(top: 347.0), child: Container(width: double.infinity, height: 50,
                        decoration: ShapeDecoration(color: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)), shadows: const [BoxShadow(color: Color.fromRGBO(0, 0, 0, 0.098), blurRadius: 20, offset: Offset(0, 4), spreadRadius: 0,)]),
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
            Padding(padding: const EdgeInsets.only(top: 29.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Form(
                    child: Column(
                      key: _formKey,
                      children: [
                        //Campo Nombre de Usuario
                        Padding(padding: const EdgeInsets.only(bottom: 15.0), 
                          child: SizedBox(width: 268, height: 48,
                            child: CampoCapturaDato(
                              nombreControlador: userController, 
                              nombreCampo: 'Usuario'
                            )
                          ),
                        ),

                        //Campo Contraseña
                        Padding(padding: const EdgeInsets.only(bottom: 10.0), 
                          child: SizedBox(width: 268, height: 48,
                            child: CampoCapturaDato(
                              nombreControlador: passwordController, 
                              nombreCampo: 'Contraseña',
                              obscureText: obscureText,
                            )
                          ),
                        ),
                      ],
                    )
                  ),

                  //Boton Olvide la Contraseña y Mostrar Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            if(userController.text.isEmpty){
                                  Fluttertoast.showToast(msg: "Campos vacios.");
                                }else{
                                  Fluttertoast.showToast(msg: "Se envio el correo electronico, cheque su buzon.");
                                  _auth.resetPassword(email: userController.text);
                                }
                          }, 
                          style: const ButtonStyle(
                            splashFactory: NoSplash.splashFactory, 
                            backgroundColor: MaterialStatePropertyAll<Color>(Colors.transparent), 
                            overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent)
                          ), child: const Text('Olvide la Contraseña', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(248, 148, 112, 1)))),
                        Transform.scale(scale: 0.8, child: CupertinoSwitch(activeColor: const Color.fromRGBO(255, 83, 83, 1) , trackColor: const Color.fromRGBO(61, 191, 0, 1), value: obscureText, onChanged: (value) {setState(() {obscureText = value;});})),
                        Icon(obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: const Color.fromRGBO(248, 148, 112, 1), size: 30)
                      ],
                    )
                  ),

                  //Boton Inicio Sesion
                  Padding(padding: const EdgeInsets.only(bottom: 39.0), 
                    child: BotonPrincipal(
                      nombreBoton: 'Iniciar', 
                      onPressed: () async {
                        dynamic result = await _auth.signInEmailPassword(LoginUser(email: userController.text, password: passwordController.text));
                          print("Test: ${result.uid}");
                          if (result.uid == null) {
                            Fluttertoast.showToast(msg: "Algo salio mal al intentar iniciar session. Verifique si los datos estan correctos");
                            print("ALGO SALIO MAL");
                          }else{
                            Fluttertoast.showToast(msg: "Bienvenido, ${result.uid}");
                            Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) =>InicioMapa()));
                          }
                      }
                    )
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
                        ), child: const Text('Registrate', style: TextStyle(fontSize: 14.0, color: Color.fromRGBO(248, 148, 112, 1)))),
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