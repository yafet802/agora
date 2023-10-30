import 'package:flutter/material.dart';

class AglomeracionActual extends StatelessWidget {

  final String aglomeracionTipo;

  AglomeracionActual({required this.aglomeracionTipo});
  
  @override
  Widget build(BuildContext context) {
    
    Widget container;
    if (aglomeracionTipo == 'AglomeracionBaja') { //Recuadro Aglomeracion Actual Baja
      container = Container(width: 238.0, height: 56.0,
        decoration: ShapeDecoration(color: Color.fromRGBO(107, 180, 64, 1).withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)), shadows: [BoxShadow(color: Color.fromRGBO(107, 180, 64, 1).withOpacity(0.1), blurRadius: 20, offset: Offset(0, 0), spreadRadius: 0,)]),
        child: const Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 6.5), child: Text(
                  'Aglomeracion Actual:',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
                ),
              ),
              Text(
                'Baja',
                style: TextStyle(color: Color.fromRGBO(107, 180, 64, 1), fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
              ),
            ],
          )
        ),
      );
    } else if (aglomeracionTipo == 'AglomeracionMedia') { //Recuadro Aglomeracion Actual Media
      container = Container(width: 238.0, height: 56.0,
        decoration: ShapeDecoration(color: Color.fromRGBO(246, 201, 39, 1).withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)), shadows: [BoxShadow(color: Color.fromRGBO(246, 201, 39, 1).withOpacity(0.1), blurRadius: 20, offset: Offset(0, 0), spreadRadius: 0,)]),
        child: const Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 6.5), child: Text(
                  'Aglomeracion Actual:',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
                ),
              ),
              Text(
                'Media',
                style: TextStyle(color: Color.fromRGBO(246, 201, 39, 1), fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
              ),
            ],
          )
        ),
      );
    } else if (aglomeracionTipo == 'AglomeracionAlta') { //Recuadro Aglomeracion Actual Alta
      container = Container(width: 238.0, height: 56.0,
        decoration: ShapeDecoration(color: Color.fromRGBO(201, 38, 38, 1).withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)), shadows: [BoxShadow(color: Color.fromRGBO(201, 38, 38, 1).withOpacity(0.1), blurRadius: 20, offset: Offset(0, 0), spreadRadius: 0,)]),
        child: const Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 6.5), child: Text(
                  'Aglomeracion Actual:',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
                ),
              ),
              Text(
                'Alta',
                style: TextStyle(color: Color.fromRGBO(201, 38, 38, 1), fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
              ),
            ],
          )
        ),
      );
    } else if (aglomeracionTipo == 'SinReportes') { //Recuadro Aglomeracion Actual Sin Reportes
      container = Container(width: 238.0, height: 56.0,
        decoration: ShapeDecoration(color: Color.fromRGBO(111, 134, 149, 1).withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)), shadows: [BoxShadow(color: Color.fromRGBO(111, 134, 149, 1).withOpacity(0.1), blurRadius: 20, offset: Offset(0, 0), spreadRadius: 0,)]),
        child: const Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 6.5), child: Text(
                  'Aglomeracion Actual:',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
                ),
              ),
              Text(
                'Sin Reportes',
                style: TextStyle(color: Color.fromRGBO(111, 134, 149, 1), fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
              ),
            ],
          )
        ),
      );
    } else if (aglomeracionTipo == 'Evento Proximo') { //Recuadro Aglomeracion Actual Evento Proximo
      container = Container(width: 238.0, height: 56.0,
        decoration: ShapeDecoration(color: Color.fromRGBO(0, 133, 255, 1).withOpacity(0.2), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17.0)), shadows: [BoxShadow(color: Color.fromRGBO(0, 133, 255, 1).withOpacity(0.1), blurRadius: 20, offset: Offset(0, 0), spreadRadius: 0,)]),
        child: const Center(
          child: Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 6.5), child: Text(
                  'Aglomeracion Actual:',
                  style: TextStyle(color: Colors.black, fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
                ),
              ),
              Text(
                'Evento Proximo',
                style: TextStyle(color: Color.fromRGBO(0, 133, 255, 1), fontFamily: 'Poppins', fontSize: 16.0, fontWeight: FontWeight.w600)
              ),
            ],
          )
        ),
      );
    } else {
      container = Container(
      );
    }

    return container;
  }
}
