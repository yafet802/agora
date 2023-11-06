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
        backgroundColor: Color.fromRGBO(229, 2279, 229, 1),
        appBar: AppBar(
            flexibleSpace: Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0.0,
                    blurRadius: 20.0,
                    offset: Offset(0.0, 4.0),
                  ),
                ],
              ),
            ),
            toolbarHeight: 50.0,
            backgroundColor: Colors.white,
            centerTitle: true,
            title: const Text('Registro', style: TextStyle(fontFamily: 'Poppins', color: Colors.black, fontSize: 18.0),),
            leading: IconButton(
                onPressed: () {Navigator.of(context).pop();},
                icon: const Icon(Icons.keyboard_arrow_left_rounded, size: 28.0, color: Color.fromRGBO(244, 89, 34, 1)))),
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
                        controller: emailController,
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
                  //Campo Confirmar Contraseña
                  Padding(padding: const EdgeInsets.only(bottom: 10.0), child: SizedBox(width: 268, height: 48,
                      child: TextFormField(
                        controller: confirmedPasswordController,
                        obscureText: obscureText,
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
                  //Switch Mostrar Contraseña
                  Padding(padding: EdgeInsets.only(bottom: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(width: 10.0, height: 10.0),
                        Padding(padding: const EdgeInsets.only(left: 170.0),
                          child: Transform.scale(scale: 0.8, child: Cupertino.CupertinoSwitch(activeColor: Color.fromRGBO(255, 83, 83, 1) , trackColor: Color.fromRGBO(61, 191, 0, 1), value: obscureText, onChanged: (value) {setState(() {obscureText = value;});})),
                        ),
                        Icon(obscureText ? Icons.visibility_off_rounded : Icons.visibility_rounded, color: Color.fromRGBO(248, 148, 112, 1), size: 30)
                      ],
                    )
                  ),
                  //Boton Registrar
                  Padding(padding: EdgeInsets.only(bottom: 30.0), child: Container(width: 156.0, height: 48.0,
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
                        child: Text('Registrar', style: TextStyle(fontFamily: 'Poppins', fontSize: 16, color: Colors.white),),
                      ),
                    ),
                  ),
                  //Separacion
                  Padding(padding: const EdgeInsets.only(bottom: 15.0), child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(padding: const EdgeInsets.only(right: 12.0), child: Container(width: 100.0, height: 2.5,
                            decoration: BoxDecoration(color: Color.fromRGBO(248, 148, 112, 1), borderRadius: BorderRadius.circular(50.0), border: Border.all(color: Color.fromRGBO(248, 148, 112, 1), width: 0.1),),
                          ),
                        ),
                        const Text(
                          'Iniciar Con',
                          style: TextStyle(color: Colors.black54, fontSize: 14.0, fontFamily: 'Poppins'),
                        ),
                        Padding(padding: const EdgeInsets.only(left: 12.0), child: Container(width: 100.0, height: 2.5,
                            decoration: BoxDecoration(color: Color.fromRGBO(248, 148, 112, 1), borderRadius: BorderRadius.circular(50.0), border: Border.all(color: Color.fromRGBO(248, 148, 112, 1), width: 0.1),),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //Botones Opciones Inicio de Sesion
                  Container(width: 268.0, height: 197.0,
                    decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15.0), boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.6), blurRadius: 6.0, inset: true)]),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(padding: const EdgeInsets.only(bottom: 19.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(padding: const EdgeInsets.only(right: 23.0), child: Container(width: 100.0, height: 70.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                                    child: FilledButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll<Color>(Colors.white), 
                                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0))),
                                        splashFactory: NoSplash.splashFactory,
                                        elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                                          if (states.contains(MaterialState.pressed)) {
                                            return 8.0; // Cambiar la elevación cuando se presiona el botón
                                          }
                                            return 4.0; // Elevación por defecto cuando no se está presionando el botón
                                          }
                                        ),
                                      ), 
                                      child: Image(image: AssetImage('assets/img/logoGoogle.png'), width: 50.0, height: 50.0)
                                    ),
                                  ),
                                ),
                                Container(width: 100.0, height: 70.0,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                                  child: FilledButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(27, 116, 244, 1)), 
                                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0))),
                                      shadowColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(27, 116, 244, 1)),
                                      splashFactory: NoSplash.splashFactory,
                                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8.0; // Cambiar la elevación cuando se presiona el botón
                                        }
                                          return 4.0; // Elevación por defecto cuando no se está presionando el botón
                                        }
                                      ),
                                    ), 
                                    child: const Image(image: AssetImage('assets/img/logoFacebook2.png'), width: 50.0, height: 50.0)
                                  ),
                                )
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                                Padding(padding: const EdgeInsets.only(right: 23.0), child: Container(width: 100.0, height: 70.0,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                                    child: FilledButton(
                                      onPressed: () {},
                                      style: ButtonStyle(
                                        backgroundColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(0, 178, 239, 1)), 
                                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0))),
                                        shadowColor: MaterialStatePropertyAll<Color>(Color.fromRGBO(0, 178, 239, 1)),
                                        splashFactory: NoSplash.splashFactory,
                                        elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                                          if (states.contains(MaterialState.pressed)) {
                                            return 8.0; // Cambiar la elevación cuando se presiona el botón
                                          }
                                            return 4.0; // Elevación por defecto cuando no se está presionando el botón
                                          }
                                        ),
                                      ), 
                                      child: const Image(image: AssetImage('assets/img/logoTwitter2.png'), width: 50.0, height: 50.0)
                                    ),
                                  ),
                                ),
                                Container(width: 100.0, height: 70.0,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(15.0)),
                                  child: FilledButton(
                                    onPressed: () {},
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStatePropertyAll<Color>(Colors.black), 
                                      shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(15.0))),
                                      splashFactory: NoSplash.splashFactory,
                                      elevation: MaterialStateProperty.resolveWith<double>((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.pressed)) {
                                          return 8.0; // Cambiar la elevación cuando se presiona el botón
                                        }
                                          return 4.0; // Elevación por defecto cuando no se está presionando el botón
                                        }
                                      ),
                                    ), 
                                    child: const Image(image: AssetImage('assets/img/logoApple.png'), width: 45.0, height: 45.0)
                                  ),
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