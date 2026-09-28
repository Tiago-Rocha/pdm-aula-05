import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import 'cartao_localidade.dart';

void main() {
  runApp(const TempoApp());
}

/// Raiz da app: um MaterialApp por app, com o tema e o primeiro ecrã.
class TempoApp extends StatelessWidget {
  const TempoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tempo Açores',
      theme: ThemeData(
        colorSchemeSeed: Colors.teal,
        useMaterial3: true,
        textTheme: GoogleFonts.interTextTheme(), // TODO 3: toda a app usa Inter
      ),
      home: const EcraInicial(),
    );
  }
}

/// Primeiro ecrã: um Scaffold por ecrã, com AppBar e o conteúdo no body.
class EcraInicial extends StatelessWidget {
  const EcraInicial({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO 3: data de hoje. Em inglês por agora; o pt_PT fica para a aula 9.
    final hoje = DateFormat('EEEE, d MMMM').format(DateTime.now());

    return Scaffold(
      appBar: AppBar(title: const Text('Tempo Açores')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              hoje,
              key: const Key('data-hoje'),
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
            // TODO 2: três localidades, cada uma no nosso widget.
            // const é possível porque o construtor é const e os argumentos
            // são literais.
            const CartaoLocalidade(nome: 'Ponta Delgada', temperatura: 21.3),
            const CartaoLocalidade(
              nome: 'Angra do Heroísmo',
              temperatura: 20.1,
              icone: Icons.cloud,
            ),
            const CartaoLocalidade(
              nome: 'Horta',
              temperatura: 19.4,
              icone: Icons.umbrella,
            ),
          ],
        ),
      ),
    );
  }
}
