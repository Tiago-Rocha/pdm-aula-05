# pdm-aula-05 · Anatomia de um projeto Flutter e primeira app

Repositório da aula 5 de PDM (Programação para Dispositivos Móveis), CTeSP DAW, ESTA, Universidade dos Açores, 2026/27.
Slides da aula: `aulas/aula-05.html` no site da UC.

## Como começar

```bash
git clone https://github.com/Tiago-Rocha/pdm-aula-05.git
cd pdm-aula-05/starter
flutter pub get
flutter run
```

A app tem de aparecer no telemóvel com um texto no centro. Depois:

```bash
flutter test
```

Os testes começam vermelhos. O objetivo da aula é pô-los verdes, um `TODO` de cada vez.

## Estrutura

- `starter/`: o projeto por onde começas. Tem `TODO`s numerados em `lib/main.dart` e testes a falhar em `test/`.
- `solucao/`: o estado final. Para comparares no fim, não antes.

Todos os repositórios das aulas seguem esta forma.

## Os TODOs

| TODO | O que fazer | Teste que fica verde |
|---|---|---|
| 1 | Substituir o `Text` do `body` pela `Column` do slide: nome da localidade, ícone, imagem de `assets/img/sao_miguel.jpg` e temperatura num `Container` com borda. | `TODO 1` em `test/widget_test.dart` |
| 2 | Criar `lib/cartao_localidade.dart` com o widget `CartaoLocalidade(nome, temperatura, icone)`, em que `icone` é opcional com valor por defeito. Usar três no `body`: Ponta Delgada, Angra do Heroísmo e Horta. | os três `TODO 2` em `test/cartao_localidade_test.dart` |
| 3 | `flutter pub add google_fonts intl`. Aplicar uma fonte a toda a app e mostrar a data de hoje por baixo do título num `Text` com `key: const Key('data-hoje')`. | `TODO 3` em `test/widget_test.dart` |

Até criares `lib/cartao_localidade.dart`, o ficheiro `test/cartao_localidade_test.dart` não compila e o `flutter analyze` mostra erros nesse ficheiro. É esperado: desaparecem no TODO 2.

No fim, commit com a mensagem `feat: cartão de localidade e fontes`.

## Trabalho de casa

1. Completar os `TODO`s até o `flutter test` ficar verde.
2. Só depois abrir `solucao/`, comparar e anotar as diferenças que não percebes. Trazê-las para a aula 6.
3. Confirmar que o `.gitignore` está a excluir `build/` e `.dart_tool/` antes de fazer push.

## Créditos

`assets/img/sao_miguel.jpg`: [Lagoa das Sete Cidades, São Miguel](https://commons.wikimedia.org/wiki/File:Lagoa_das_Sete_Cidades,_S%C3%A3o_Miguel.jpg), Samuel Monteiro Domingues, Wikimedia Commons, CC BY-SA 4.0, redimensionada.

Conteúdos do docente com licença CC BY-NC-SA 4.0.
