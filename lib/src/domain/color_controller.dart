import 'package:flutter/material.dart';

class ColorController {
  // o valueNotifier que armazenará a cor atual da tela.
  final ValueNotifier<Color> colorNotifier = ValueNotifier<Color>(Colors.blue);

  //Método para alterar entre as cores.
  void toggleColor() {
    colorNotifier.value =
        colorNotifier.value == Colors.blue ? Colors.white : Colors.blue;
  }

  // Dispose do ValueNotifier quando nao for mais necessario.
  void dispose() {
    colorNotifier.dispose();
  }
}
