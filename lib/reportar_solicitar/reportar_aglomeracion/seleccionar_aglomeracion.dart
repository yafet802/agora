import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class SeleccionarAglomeracion extends StatefulWidget {
  const SeleccionarAglomeracion({super.key});

  @override
  State<SeleccionarAglomeracion> createState() => _SeleccionarAglomeracionState();
}

class _SeleccionarAglomeracionState extends State<SeleccionarAglomeracion> {

  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl(
        initialValue: groupValue,
        fixedWidth: 82,
        height: 30.0,
        children: const {
          0: Text('Baja', style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins')),
          1: Text('Media', style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins')),
          2: Text('Alta', style: TextStyle(color: Colors.white, fontSize: 16.0, fontFamily: 'Poppins'))
        },
        decoration: BoxDecoration(
          color: Color.fromRGBO(80, 80, 80, 1),
          borderRadius: BorderRadius.circular(50.0)
        ),
        innerPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        thumbDecoration: BoxDecoration(
          color: _getThumbColor(groupValue),
          borderRadius: BorderRadius.circular(50.0),
          boxShadow: [
            BoxShadow(
              color: _getThumbColor(groupValue).withOpacity(0.3),
              blurRadius: 4.0,
              spreadRadius: 1.0,
              offset: Offset(0.0, 2.0)
            )
          ]
        ),
        duration: Duration(milliseconds: 250),
        onValueChanged: (int? newValue) {
          setState(() {
            groupValue = newValue;
          });
        },
      );
  }

  Color _getThumbColor(groupValue) {
  switch (groupValue) {
      case 0:
        return Color.fromRGBO(107, 180, 64, 1);
      case 1:
        return Color.fromRGBO(246, 201, 39, 1);
      case 2:
        return Color.fromRGBO(201, 38, 38, 1);
      default:
        return Colors.transparent;
    }
  }

  Color _getThumbColorShadow(groupValue) {
  switch (groupValue) {
      case 0:
        return Color.fromRGBO(107, 180, 64, 1);
      case 1:
        return Color.fromRGBO(246, 201, 39, 1);
      case 2:
        return Color.fromRGBO(201, 38, 38, 1);
      default:
        return Colors.transparent;
    }
  }
}