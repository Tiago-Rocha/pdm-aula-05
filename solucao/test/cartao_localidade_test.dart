// Testes do widget CartaoLocalidade (TODO 2). Corre com: flutter test
// Na solução estão todos verdes.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tempo_acores/cartao_localidade.dart';
import 'package:tempo_acores/main.dart';

Widget _embrulha(Widget w) => MaterialApp(home: Scaffold(body: w));

void main() {
  testWidgets('TODO 2: o cartão mostra o nome e a temperatura arredondada',
      (tester) async {
    await tester.pumpWidget(
      _embrulha(const CartaoLocalidade(nome: 'Horta', temperatura: 19.4)),
    );

    expect(find.text('Horta'), findsOneWidget);
    expect(find.text('19 °C'), findsOneWidget,
        reason: 'A temperatura deve aparecer arredondada, com " °C".');
    expect(find.byIcon(Icons.wb_sunny), findsOneWidget,
        reason: 'Sem icone indicado, o cartão usa Icons.wb_sunny.');
  });

  testWidgets('TODO 2: o ícone é configurável', (tester) async {
    await tester.pumpWidget(
      _embrulha(const CartaoLocalidade(
        nome: 'Angra do Heroísmo',
        temperatura: 20.6,
        icone: Icons.umbrella,
      )),
    );

    expect(find.byIcon(Icons.umbrella), findsOneWidget);
    expect(find.text('21 °C'), findsOneWidget);
  });

  testWidgets('TODO 2: o ecrã principal tem três cartões', (tester) async {
    await tester.pumpWidget(const TempoApp());

    expect(find.byType(CartaoLocalidade), findsNWidgets(3));
    expect(find.text('Ponta Delgada'), findsOneWidget);
    expect(find.text('Angra do Heroísmo'), findsOneWidget);
    expect(find.text('Horta'), findsOneWidget);
  });
}
