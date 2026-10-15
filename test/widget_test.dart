import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:loteria_dolorena/main.dart';

void main() {
  testWidgets('Lotería Doloreña smoke test', (WidgetTester tester) async {
    // Construye nuestra app y dispara un frame.
    await tester.pumpWidget(const LoteriaApp());

    // Verifica que aparezca el texto inicial del juego.
    expect(find.text('Toca Cantar para empezar'), findsOneWidget);

    // Verifica que el botón de cantar esté presente usando su icono.
    expect(find.byIcon(Icons.campaign), findsOneWidget);
  });
}