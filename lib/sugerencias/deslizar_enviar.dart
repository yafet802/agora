import 'package:flutter/material.dart';
import 'package:action_slider/action_slider.dart';

class DeslizarEnviar extends StatefulWidget {
  const DeslizarEnviar({super.key});

  @override
  State<DeslizarEnviar> createState() => _DeslizarEnviarState();
}

class _DeslizarEnviarState extends State<DeslizarEnviar> {
  @override
  Widget build(BuildContext context) {
    return ActionSlider.standard(
      width: 295.0,
      height: 47.0,
      sliderBehavior: SliderBehavior.stretch,
      backgroundBorderRadius: BorderRadius.circular(50.0),
      foregroundBorderRadius: BorderRadius.circular(50.0),
      boxShadow: const [
        BoxShadow(
          color: Colors.transparent,
        )
      ],
      backgroundColor: Colors.white,
      toggleColor: const Color.fromRGBO(244, 89, 34, 1),
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
          angle: 0.0,
          child: const Icon(
            Icons.keyboard_arrow_right_rounded, 
            size: 28.0, 
            color: Colors.white
          )
        ),
      ),
      child: const Text('Deslizar para Enviar', style: TextStyle(color: Color.fromRGBO(129, 129, 129, 1), fontSize: 15.0)),
      action: (controller) async {
        controller.loading();
        await Future.delayed(const Duration(seconds: 3));
        controller.success();
        await Future.delayed(const Duration(seconds: 1));
        controller.reset();
      },
    );
  }
}