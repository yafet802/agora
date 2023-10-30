import 'package:flutter/material.dart';

class OverlayFiltro extends StatefulWidget {
  @override
  _OverlayFiltroState createState() => _OverlayFiltroState();
}

class _OverlayFiltroState extends State<OverlayFiltro> {

  List<bool> buttonStates = [false, false, false, false, false]; // Un estado para cada botón

  void toggleButtonState(int index) {
    setState(() {
      buttonStates[index] = !buttonStates[index];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Container(width: 268.0, height: 390.0, 
          decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(15)),
          child: Column(
            children: [
              const Padding(padding: EdgeInsets.only(top: 15.0), child: Text(
                    'Filtrar Mapa',
                    style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 18.0)
                  ),
                ),
              //Linea Superior
              Padding(padding: EdgeInsets.only(top: 15.0, bottom: 15.0), child: Container(width: 291.0, height: 0.0,
                    decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 100), border: Border.all(color: Color.fromRGBO(217, 217, 217, 100), width: 1))),           
              ),
              //Botones
              Column(
                children: [
                  Padding(padding: EdgeInsets.only(bottom: 15.0), child: Container(width: 233.0, height: 33.0, 
                        child: FilledButton(
                        onPressed: () {toggleButtonState(0);},
                        style: FilledButton.styleFrom(
                          backgroundColor: buttonStates[0] ? Color.fromRGBO(107, 180, 64, 1) : Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          side: BorderSide(color: Colors.transparent),
                          elevation: buttonStates[0] ? 10.0 : 0.0,
                        ), 
                        child: Text('Aglomeracion Baja', 
                          style: TextStyle(
                            color: buttonStates[0] ? Colors.white : Colors.black,
                            fontFamily: 'Poppins', 
                            fontSize: 16.0)), 
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15.0), child: Container(width: 233.0, height: 33.0, 
                        child: FilledButton(
                        onPressed: () {toggleButtonState(1);},
                        style: FilledButton.styleFrom(
                          backgroundColor: buttonStates[1] ? Color.fromRGBO(246, 201, 39, 1) : Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          side: BorderSide(color: Colors.transparent),
                          elevation: buttonStates[1] ? 10.0 : 0.0,
                        ), 
                        child: Text('Aglomeracion Media', 
                          style: TextStyle(
                            color: buttonStates[1] ? Colors.white : Colors.black,
                            fontFamily: 'Poppins', 
                            fontSize: 16.0)), 
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15.0), child: Container(width: 233.0, height: 33.0, 
                        child: FilledButton(
                        onPressed: () {toggleButtonState(2);},
                        style: FilledButton.styleFrom(
                          backgroundColor: buttonStates[2] ? Color.fromRGBO(201, 38, 38, 1) : Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          side: BorderSide(color: Colors.transparent),
                          elevation: buttonStates[2] ? 10.0 : 0.0,
                        ), 
                        child: Text('Aglomeracion Alta', 
                          style: TextStyle(
                            color: buttonStates[2] ? Colors.white : Colors.black,
                            fontFamily: 'Poppins', 
                            fontSize: 16.0)), 
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 15.0), child: Container(width: 233.0, height: 33.0, 
                        child: FilledButton(
                        onPressed: () {toggleButtonState(3);},
                        style: FilledButton.styleFrom(
                          backgroundColor: buttonStates[3] ? Color.fromRGBO(111, 134, 149, 1) : Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          side: BorderSide(color: Colors.transparent),
                          elevation: buttonStates[3] ? 10.0 : 0.0,
                        ), 
                        child: Text('Sin Reportes', 
                          style: TextStyle(
                            color: buttonStates[3] ? Colors.white : Colors.black,
                            fontFamily: 'Poppins', 
                            fontSize: 16.0)), 
                      ),
                    ),
                  ),
                  Container(width: 233.0, height: 33.0, 
                        child: FilledButton(
                        onPressed: () {toggleButtonState(4);},
                        style: FilledButton.styleFrom(
                          backgroundColor: buttonStates[4] ? Color.fromRGBO(0, 133, 255, 1) : Colors.white,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50.0)),
                          side: BorderSide(color: Colors.transparent),
                          elevation: buttonStates[4] ? 10.0 : 0.0,
                        ), 
                        child: Text('Eventos Proximos', 
                          style: TextStyle(
                            color: buttonStates[4] ? Colors.white : Colors.black,
                            fontFamily: 'Poppins', 
                            fontSize: 16.0)), 
                      ),
                    )
                ],
              ),
              //Linea Inferior
              Padding(padding: EdgeInsets.only(top: 15.0, bottom: 15.0), child: Container(width: 291.0, height: 0.0,
                    decoration: BoxDecoration(color: Color.fromRGBO(217, 217, 217, 100), border: Border.all(color: Color.fromRGBO(217, 217, 217, 100), width: 1))),           
              ),
              //Boton Aplicar Filtro
              Container(width: 233.0, height: 47.0, child: OutlinedButton(
                      onPressed: () {Navigator.pop(context);}, 
                      style: ButtonStyle(
                        shape: MaterialStatePropertyAll<RoundedRectangleBorder>(RoundedRectangleBorder(borderRadius:BorderRadius.circular(50.0))),
                        side: MaterialStatePropertyAll<BorderSide>(BorderSide(color: Color.fromRGBO(244, 89, 34, 1), width: 2.0)),
                        overlayColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Colors.transparent; // Color por defecto
                          },
                        ),
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Color.fromRGBO(244, 89, 34, 1); // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Colors.transparent; // Color por defecto
                          },
                        ),
                        iconColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white; // Cambia el color del efecto de tinta cuando se toca
                            }
                              return Color.fromRGBO(244, 89, 34, 1); // Color por defecto
                          },
                        ),
                        foregroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed)) {
                              return Colors.white; // Cambia el color del texto cuando se toca
                            }
                              return Color.fromRGBO(244, 89, 34, 1); // Color del texto por defecto
                          },
                        ),
                      ), 
                      child: Text('Aplicar Filtro', style: TextStyle(fontFamily: 'Poppins', fontSize: 16.0)),
                    ),
                  ),
            ],
          ),
        );
  }
}