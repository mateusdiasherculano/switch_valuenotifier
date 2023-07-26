import 'package:flutter/material.dart';

import '../domain/color_controller.dart';
import '../infrastructure/color_controller_impl.dart';

class ColorSwitchWidget extends StatefulWidget {
  ColorSwitchWidget({super.key});
  final ColorController colorController = ColorControllerImpl();

  @override
  ColorSwitchWidgetState createState() => ColorSwitchWidgetState();
}

class ColorSwitchWidgetState extends State<ColorSwitchWidget> {
  // Criando uma instância do ColorController para a cor da tela.

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AnimatedBuilder with ValueNotifier'),
      ),
      body: AnimatedBuilder(
        animation: widget.colorController.colorNotifier,
        builder: (context, _) {
          return Container(
            color: widget.colorController.colorNotifier.value,
            child: Center(
              child: Switch(
                value:
                    widget.colorController.colorNotifier.value == Colors.white,
                onChanged: (value) {
                  // Quando o switch for alterado, chamamos o metodo toggleColor
                  // para mudar a cor da tela
                  widget.colorController.toggleColor();
                },
              ),
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    widget.colorController.dispose();
    super.dispose();
  }
}
