// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:switch_valuenotifier/src/domain/color_controller.dart';
import 'package:switch_valuenotifier/src/infrastructure/color_controller_impl.dart';
import 'package:switch_valuenotifier/src/presentation/color_switch_widget.dart';

void main() {
  testWidgets('Test toggle color - Presentation', (WidgetTester tester) async {
    // Cria uma instância do ColorController.
    final ColorController colorController = ColorControllerImpl();

    // Constrói o widget ColorSwitchWidget.
    await tester.pumpWidget(MaterialApp(home: ColorSwitchWidget()));

    // Verifica se a cor inicial é azul.
    expect(find.byType(Container), findsOneWidget);
    Container container = tester.firstWidget(find.byType(Container));
    expect(container.color, equals(Colors.blue));

    // Clique no Switch.
    await tester.tap(find.byType(Switch));
    await tester.pump();

    // Verifica se a cor mudou para verde após o clique no Switch.
    container = tester.firstWidget(find.byType(Container));
    expect(container.color, equals(Colors.white));

    // Dispose o ColorController após os testes.
    colorController.dispose();
  });
}
