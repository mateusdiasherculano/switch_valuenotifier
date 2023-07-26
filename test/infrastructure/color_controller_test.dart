import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:switch_valuenotifier/src/infrastructure/color_controller_impl.dart';

void main (){
  test('Toggle color - Infrastructure', () {
    final colorController = ColorControllerImpl();

    // Verifica se a cor inicial é azul.
    expect(colorController.colorNotifier.value, equals(Colors.blue));

    // Altera a cor
    colorController.toggleColor();

    // Verifica se a cor mudou para verde após a alteração.
    expect(colorController.colorNotifier.value, equals(Colors.white));

    // Altera a cor novamente
    colorController.toggleColor();

    // Verifica se a cor voltou para azul após a segunda alteração.
    expect(colorController.colorNotifier.value, equals(Colors.blue));

    // Dispose o colorController após os testes.
    colorController.dispose();
  });
}