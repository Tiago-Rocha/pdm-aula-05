import 'package:flutter/material.dart';

/// A card with a location name, a weather icon and the current temperature.
///
/// A custom widget is a class with `final` fields, a `const` constructor
/// with named parameters and a `build` method.
class LocationCard extends StatelessWidget {
  const LocationCard({
    super.key,
    required this.name,
    required this.temperature,
    this.icon = Icons.wb_sunny, // optional parameter with a default value
  });

  final String name;
  final double temperature;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icon, size: 40, color: Colors.orange),
            const SizedBox(width: 16),
            // Expanded instead of Spacer: a long name such as "Angra do
            // Heroísmo" shrinks instead of overflowing the Row. Why: class 6.
            Expanded(child: Text(name, style: textTheme.titleLarge)),
            Text('${temperature.round()} °C', style: textTheme.headlineMedium),
          ],
        ),
      ),
    );
  }
}
