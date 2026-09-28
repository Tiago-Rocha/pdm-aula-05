import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'location_card.dart';

void main() {
  runApp(const WeatherApp());
}

/// App root: one MaterialApp per app, with the theme and the first screen.
class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Açores',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(), // TODO 3: whole app uses Inter
      ),
      home: const HomeScreen(),
    );
  }
}

/// First screen: one Scaffold per screen, with an AppBar and the body.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 3: today's date. In English for now; pt_PT comes in class 9.
    final today = DateFormat('EEEE, d MMMM').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('Tempo Açores')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              today,
              key: const Key('today-date'),
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                'assets/img/sao_miguel.jpg',
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 12),
            // TODO 2: three locations, each one in our own widget.
            // const is possible because the constructor is const and the
            // arguments are literals.
            const LocationCard(name: 'Ponta Delgada', temperature: 21.3),
            const LocationCard(
              name: 'Angra do Heroísmo',
              temperature: 20.1,
              icon: Icons.cloud,
            ),
            const LocationCard(
              name: 'Horta',
              temperature: 19.4,
              icon: Icons.umbrella,
            ),
          ],
        ),
      ),
    );
  }
}
