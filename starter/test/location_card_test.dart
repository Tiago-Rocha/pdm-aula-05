// Tests for the LocationCard widget (TODO 2). Run with: flutter test
// This file only compiles after you create lib/location_card.dart.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tempo_acores/location_card.dart';
import 'package:tempo_acores/main.dart';

Widget _wrap(Widget w) => MaterialApp(home: Scaffold(body: w));

void main() {
  testWidgets('TODO 2: o cartão mostra o nome e a temperatura arredondada',
      (tester) async {
    await tester.pumpWidget(
      _wrap(const LocationCard(name: 'Horta', temperature: 19.4)),
    );

    expect(find.text('Horta'), findsOneWidget);
    expect(find.text('19 °C'), findsOneWidget,
        reason: 'A temperatura deve aparecer arredondada, com " °C".');
    expect(find.byIcon(Icons.wb_sunny), findsOneWidget,
        reason: 'Sem icon indicado, o cartão usa Icons.wb_sunny.');
  });

  testWidgets('TODO 2: o ícone é configurável', (tester) async {
    await tester.pumpWidget(
      _wrap(const LocationCard(
        name: 'Angra do Heroísmo',
        temperature: 20.6,
        icon: Icons.umbrella,
      )),
    );

    expect(find.byIcon(Icons.umbrella), findsOneWidget);
    expect(find.text('21 °C'), findsOneWidget);
  });

  testWidgets('TODO 2: o ecrã principal tem três cartões', (tester) async {
    await tester.pumpWidget(const WeatherApp());

    expect(find.byType(LocationCard), findsNWidgets(3));
    expect(find.text('Ponta Delgada'), findsOneWidget);
    expect(find.text('Angra do Heroísmo'), findsOneWidget);
    expect(find.text('Horta'), findsOneWidget);
  });
}
