import 'package:agora/botones/boton_opcion_inicio_sesion.dart';
import 'package:agora/botones/boton_principal.dart';
import 'package:agora/campos_captura_datos/campo_captura_dato.dart';
import 'package:agora/inicio_general/inicio_general.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/cupertino.dart' as Cupertino;

class Registro extends StatefulWidget {
  Registro({super.key});

  @override
  State<Registro> createState() => _RegistroState();
}

class _RegistroState extends State<Registro> {
  
  bool obscureText = true;

  TextEditingController userController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmedPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(229, 2279, 229, 1),
        appBar: AppBar(
            flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Colors.white, 
              boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20.0, offset: const Offset(0.0, 4.0))],
              borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(15.0), bottomRight: Radius.circular(15.0))
            ),
          ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.transparent,
            centerTitle: true,
            title: const Text('Registro', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0),),
            leading: IconButton(
                onPressed: () {Navigator.of(context).pop();},
                icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))),
        body: ListView(
          children: [

            //Apartados Insertar Datos Usuario
            Padding(padding: const EdgeInsets.only(top: 29.0), 
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  //Campo Nombre de Usuario
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), 
                    child: SizedBox(width: 268, height: 48,
                      child: CampoCapturaDato(
                        nombreControlador: userController,
                        nombreCampo: 'Usuario',  
                      )
                    ),
                  ),

                  //Campo Correo Electronico
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), 
                    child: SizedBox(width: 268, height: 48,
                      child: CampoCapturaDato(
                        nombreControlador: emailController,
                        nombreCampo: 'Correo Electronico',
                      )
                    ),
                  ),

                  //Campo Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), 
                    child: SizedBox(width: 268, height: 48,
                      child: CampoCapturaDato(
                        nombreControlador: confirmedPasswordController, 
                        nombreCampo: 'Contraseña', 
                        obscureText: obscureText
                      )
                    ),
                  ),

                  //Campo Confirmar Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 10.0), 
                    child: SizedBox(width: 268, height: 48,
                      child: CampoCapturaDato(
                        nombreControlador: confirmedPasswordController, 
                        nombreCampo: 'Confirmar Contraseña', 
                        obscureText: obscureText
                      )
                    ),
                  ),

                  //Switch Mostrar Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(width: 10.0, height: 10.0),
                        Padding(padding: const EdgeInsets.only(left: 170.0),
                          child: Transform.scale(
                            scale: 0.8, 
                            child: Cupertino.CupertinoSwitch(
                              activeColor: const Color.fromRGBO(255, 83, 83, 1), 
                              trackColor: const Color.fromRGBO(61, 191, 0, 1), 
                              value: obscureText, onChanged: (value) {setState(() {obscureText = value;});})),
                        ),
                        Icon(obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: const Color.fromRGBO(248, 148, 112, 1), size: 30)
                      ],
                    )
                  ),

                  //Boton Registrar
                  Padding(padding: const EdgeInsets.only(bottom: 30.0), 
                    child: BotonPrincipal(
                      nombreBoton: 'Registrar', 
                      onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => InicioMapa()));}
                    )
                  ),

                  //Separacion
                  Padding(padding: const EdgeInsets.only(bottom: 5.0), child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.only(right: 12.0), child: Container(width: 100.0, height: 2.5,
                            decoration: BoxDecoration(color: const Color.fromRGBO(248, 148, 112, 1), borderRadius: BorderRadius.circular(50.0), border: Border.all(color: Color.fromRGBO(248, 148, 112, 1), width: 0.1),),
                          ),
                        ),
                        const Text(
                          'Iniciar Con',
                          style: TextStyle(color: Colors.black54, fontSize: 14.0, fontFamily: 'Poppins'),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 12.0), child: Container(width: 100.0, height: 2.5,
                            decoration: BoxDecoration(color: const Color.fromRGBO(248, 148, 112, 1), borderRadius: BorderRadius.circular(50.0), border: Border.all(color: Color.fromRGBO(248, 148, 112, 1), width: 0.1),),
                          ),
                        ),
                      ],
                    ),
                  ),


                  //Botones Opciones Inicio de Sesion
                  Container(width: 268.0, height: 197.0,
                    decoration: const BoxDecoration(
                      color: Colors.transparent, 
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: const EdgeInsets.only(bottom: 19.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: const EdgeInsets.only(right: 23.0), 
                                  child: BotonOpcionInicioSesion(
                                    colorBoton: Colors.white, 
                                    logoBoton: Image(image: AssetImage('assets/img/logoGoogle.png'))
                                  )
                                ),
                                BotonOpcionInicioSesion(
                                  colorBoton: const Color.fromRGBO(27, 116, 244, 1), 
                                  logoBoton: Image(image: AssetImage('assets/img/logoFacebook2.png'))
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(padding: const EdgeInsets.only(right: 23.0), 
                                child: BotonOpcionInicioSesion(
                                  colorBoton: const Color.fromRGBO(0, 178, 239, 1), 
                                  logoBoton: Image(image: AssetImage('assets/img/logoTwitter2.png'))
                                )
                              ),
                              BotonOpcionInicioSesion(
                                colorBoton: Colors.black, 
                                logoBoton: Image(image: AssetImage('assets/img/logoApple.png'))
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  )
                ],
              ),
            ),
          ],
        )
      );
  }
}