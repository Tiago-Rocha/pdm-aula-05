import 'package:flutter/material.dart';

/// Um cartão com o nome de uma localidade, um ícone do estado do tempo
/// e a temperatura atual.
///
/// Um widget próprio é uma classe com campos `final`, um construtor `const`
/// com parâmetros nomeados e um método `build`.
class CartaoLocalidade extends StatelessWidget {
  const CartaoLocalidade({
    super.key,
    required this.nome,
    required this.temperatura,
    this.icone = Icons.wb_sunny, // parâmetro opcional com valor por defeito
  });

  final String nome;
  final double temperatura;
  final IconData icone;

  @override
  Widget build(BuildContext context) {
    final texto = Theme.of(context).textTheme;
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Row(
          children: [
            Icon(icone, size: 40, color: Colors.orange),
            const SizedBox(width: 16),
            // Expanded em vez de Spacer: um nome longo como "Angra do Heroísmo"
            // encolhe em vez de rebentar a Row. Vemos porquê na aula 6.
            Expanded(child: Text(nome, style: texto.titleLarge)),
            Text('${temperatura.round()} °C', style: texto.headlineMedium),
          ],
        ),
      ),
    );
  }
}
