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
| 2 | Criar `lib/location_card.dart` com o widget `LocationCard(name, temperature, icon)`, em que `icon` é opcional com valor por defeito. Usar três no `body`: Ponta Delgada, Angra do Heroísmo e Horta. | os três `TODO 2` em `test/location_card_test.dart` |
| 3 | `flutter pub add google_fonts intl`. Aplicar uma fonte a toda a app e mostrar a data de hoje por baixo do título num `Text` com `key: const Key('today-date')`. | `TODO 3` em `test/widget_test.dart` |

Até criares `lib/location_card.dart`, o ficheiro `test/location_card_test.dart` não compila e o `flutter analyze` mostra erros nesse ficheiro. É esperado: desaparecem no TODO 2.

No fim, commit com a mensagem `feat: location card and fonts`.

## Se o `flutter run` falhar no Android

O projeto foi gerado com Flutter 3.47.5 e usa Gradle 9.5 e Android Gradle Plugin 9.1, que correm com qualquer Java de 17 a 26. Confirma que tens o Flutter atualizado: `flutter upgrade`. Se já tinhas clonado antes desta alteração, faz `git pull`.

1. `flutter doctor -v` e olha para a linha **Java version** dentro de Android toolchain. O Flutter usa, por esta ordem: `flutter config --jdk-dir`, a variável `JAVA_HOME`, o Java do Android Studio, o `java` do PATH.
2. Se aparecer `Unsupported class file major version` ou `incompatible with the Java version`, o Flutter apanhou um Java instalado à parte. Aponta-o para o Java do Android Studio:
   - Windows: `flutter config --jdk-dir "C:\Program Files\Android\Android Studio\jbr"`
   - macOS: `flutter config --jdk-dir "/Applications/Android Studio.app/Contents/jbr/Contents/Home"`
3. `cmdline-tools component is missing` ou `Android license status unknown`: SDK Manager → SDK Tools → Command-line Tools (latest), depois `flutter doctor --android-licenses`.
4. Download do Gradle interrompido: repete `flutter run`. Se continuar, apaga a pasta `.gradle` na tua pasta pessoal e repete.
5. Utilizador do Windows com espaços ou acentos no nome: vê a secção do guia de instalação.
6. Quatro linhas `WARNING: A restricted method in java.lang.System has been called` no arranque do Gradle são normais com o Java 25 do Android Studio novo. Ignora-as; a compilação continua.

## Trabalho de casa

1. Completar os `TODO`s até o `flutter test` ficar verde.
2. Só depois abrir `solucao/`, comparar e anotar as diferenças que não percebes. Trazê-las para a aula 6.
3. Confirmar que o `.gitignore` está a excluir `build/` e `.dart_tool/` antes de fazer push.

## Créditos

`assets/img/sao_miguel.jpg`: [Lagoa das Sete Cidades, São Miguel](https://commons.wikimedia.org/wiki/File:Lagoa_das_Sete_Cidades,_S%C3%A3o_Miguel.jpg), Samuel Monteiro Domingues, Wikimedia Commons, CC BY-SA 4.0, redimensionada.

Conteúdos do docente com licença CC BY-NC-SA 4.0.
