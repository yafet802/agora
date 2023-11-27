import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';

class DeslizarReportarSolicitar extends StatefulWidget {
  const DeslizarReportarSolicitar({super.key});

  @override
  State<DeslizarReportarSolicitar> createState() => _DeslizarReportarSolicitarState();
}

class _DeslizarReportarSolicitarState extends State<DeslizarReportarSolicitar> {
  @override
  Widget build(BuildContext context) {
    return ActionSlider.dual(
      width: 295.0,
      height: 47.0,
      backgroundBorderRadius: BorderRadius.circular(50.0),
      foregroundBorderRadius: BorderRadius.circular(50.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.transparent,
        )
      ],
      backgroundColor: Colors.white,
      toggleColor: const Color.fromRGBO(244, 89, 34, 1),
      startChild: const Text('Solicitar', style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontSize: 15.0)),
      endChild: const Text('Reportar', style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontSize: 15.0)),
      loadingIcon: const SizedBox(
        width: 55.0,
        child: Center(
          child: SizedBox(
            width: 24.0,
            height: 24.0,
            child: CircularProgressIndicator(
              strokeWidth: 2.0, 
              color: Colors.white
            )
          )
        )
      ),
      successIcon: const SizedBox(
        width: 55, 
        child: Center(
          child: Icon(
            Icons.check_rounded, 
            color: Colors.white
          )
        )
      ),
      icon: Padding(
        padding: const EdgeInsets.only(right: 2.0),
        child: Transform.rotate(
          angle: 0.5 * 3.1416,
          child: const Icon(
            Icons.unfold_more_rounded, 
            size: 28.0, 
            color: Colors.white
          )
        ),
      ),
      startAction: (controller) async {
        controller.loading();
        await Future.delayed(const Duration(seconds: 3));
        controller.success();
        await Future.delayed(const Duration(seconds: 1));
        controller.reset();
      },
      endAction: (controller) async {
        controller.loading();
        await Future.delayed(const Duration(seconds: 3));
        controller.success();
        await Future.delayed(const Duration(seconds: 1));
        controller.reset();
      },
    );
  }
}