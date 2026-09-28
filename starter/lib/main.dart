import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Açores',
      // TODO 3: add google_fonts (flutter pub add google_fonts) and apply a
      // font to the whole app with textTheme: GoogleFonts.interTextTheme().
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tempo Açores')),
        // TODO 3: show today's date below the title using the intl package
        // (DateFormat('EEEE, d MMMM').format(DateTime.now())) in a Text with
        // key: const Key('today-date'). That key is what the test looks for.
        body: const Center(
          // TODO 1: replace this Text with the Column from slide 2: location
          // name, icon, image from assets/img/sao_miguel.jpg and the
          // temperature inside a Container with a border.
          //
          // TODO 2: create lib/location_card.dart with the widget
          // LocationCard(name, temperature, optional icon) and use it here
          // with three locations in a Column: Ponta Delgada, Angra do
          // Heroísmo and Horta.
          child: Text('TODO 1: substitui por um cartão'),
        ),
      ),
    );
  }
}
