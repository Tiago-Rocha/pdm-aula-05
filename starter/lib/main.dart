import 'package:flutter/material.dart';

void main() {
  runApp(const TempoApp());
}

class TempoApp extends StatelessWidget {
  const TempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Açores',
      // TODO 3: adiciona google_fonts (flutter pub add google_fonts) e aplica
      // uma fonte a toda a app com textTheme: GoogleFonts.interTextTheme().
      theme: ThemeData(colorSchemeSeed: Colors.teal, useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Tempo Açores')),
        // TODO 3: mostra a data de hoje por baixo do título, com o package intl
        // (DateFormat('EEEE, d MMMM').format(DateTime.now())), num Text com
        // key: const Key('data-hoje'). É essa key que o teste procura.
        body: const Center(
          // TODO 1: substitui este Text pela Column do slide 2: nome da
          // localidade, ícone, imagem de assets/img/sao_miguel.jpg e a
          // temperatura dentro de um Container com borda.
          //
          // TODO 2: cria lib/cartao_localidade.dart com o widget
          // CartaoLocalidade(nome, temperatura, icone opcional) e usa-o aqui
          // com três localidades numa Column: Ponta Delgada, Angra do
          // Heroísmo e Horta.
          child: Text('TODO 1: substitui por um cartão'),
        ),
      ),
    );
  }
}
