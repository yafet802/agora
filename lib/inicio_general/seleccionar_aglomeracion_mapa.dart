import 'package:flutter/material.dart';
import 'package:custom_sliding_segmented_control/custom_sliding_segmented_control.dart';

class SeleccionarAglomeracionMapa extends StatefulWidget {
  
  final bool isDisabled;

  SeleccionarAglomeracionMapa({
    required this.isDisabled
  });

  @override
  State<SeleccionarAglomeracionMapa> createState() => _SeleccionarAglomeracionMapaState();
}

class _SeleccionarAglomeracionMapaState extends State<SeleccionarAglomeracionMapa> {
  
  int? groupValue = 0;

  @override
  Widget build(BuildContext context) {
    return CustomSlidingSegmentedControl(
        isDisabled: widget.isDisabled,
        initialValue: groupValue,
        fixedWidth: 81.0,
        height: 47.0,
        children: const {
          0: Icon(Icons.person_rounded, color: Colors.white),
          1: Icon(Icons.group_rounded, color: Colors.white),
          2: Icon(Icons.groups_rounded, color: Colors.white),
          3: Icon(Icons.person_off_rounded, color: Colors.white),
        },
        decoration: BoxDecoration(
          color: const Color.fromRGBO(173, 173, 173, 1),
          borderRadius: BorderRadius.circular(50.0)
        ),
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
        duration: const Duration(milliseconds: 250),
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
        if (widget.isDisabled == true) {
          return const Color.fromRGBO(129, 129, 129, 1);
        }
        return const Color.fromRGBO(107, 180, 64, 1);
      case 1:
        if (widget.isDisabled == true) {
          return const Color.fromRGBO(129, 129, 129, 1);
        }
        return const Color.fromRGBO(246, 201, 39, 1);
      case 2:
        if (widget.isDisabled == true) {
          return const Color.fromRGBO(129, 129, 129, 1);
        }
        return const Color.fromRGBO(201, 38, 38, 1);
      case 3:
        if (widget.isDisabled == true) {
          return const Color.fromRGBO(129, 129, 129, 1);
        }
        return const Color.fromRGBO(111, 134, 149, 1);
      default:
        return Colors.transparent;
    }
  }

  Color _getThumbColorShadow(groupValue) {
  switch (groupValue) {
      case 0:
        return const Color.fromRGBO(107, 180, 64, 1);
      case 1:
        return const Color.fromRGBO(246, 201, 39, 1);
      case 2:
        return const Color.fromRGBO(201, 38, 38, 1);
      case 3:
        return const Color.fromRGBO(111, 134, 149, 1);
      default:
        return Colors.transparent;
    }
  }
}