// Tests for the main screen. Run with: flutter test
// In the solution they are all green.
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tempo_acores/main.dart';

void main() {
  testWidgets('TODO 1: o ecrã mostra Ponta Delgada com um ícone e uma imagem',
      (tester) async {
    await tester.pumpWidget(const WeatherApp());

    expect(find.text('TODO 1: substitui por um cartão'), findsNothing,
        reason: 'O texto do TODO 1 ainda está no ecrã.');
    expect(find.textContaining('Ponta Delgada'), findsWidgets,
        reason: 'Falta o nome da localidade.');
    expect(find.byType(Icon), findsWidgets,
        reason: 'Falta um Icon (Icons.wb_sunny, Icons.cloud, ...).');
    expect(find.byType(Image), findsWidgets,
        reason: 'Falta a Image.asset de assets/img/sao_miguel.jpg.');
  });

  testWidgets('TODO 3: a data de hoje aparece por baixo do título',
      (tester) async {
    await tester.pumpWidget(const WeatherApp());

    final date = find.byKey(const Key('today-date'));
    expect(date, findsOneWidget,
        reason: 'Falta um Text com key: const Key(\'today-date\').');

    final text = tester.widget<Text>(date).data ?? '';
    expect(text, contains('${DateTime.now().day}'),
        reason: 'O texto "$text" não tem o dia de hoje. Usa DateFormat do intl.');
  });
}
