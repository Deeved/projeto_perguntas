// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(const PerguntaApp());

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({Key? key}) : super(key: key);

  void responder() {
    print('Pergunta respondida!');
  }

  @override
  Widget build(BuildContext context) {
    final List<String> perguntas = [
      'Qual é a sua cor favorita?',
      'Qual é o seu animal favorito?'
    ];

    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('Perguntas'),
      ),
      body: Column(
        children: <Widget>[
          Text(perguntas[0]),
          ElevatedButton(child: Text('Resposta 1'), onPressed: responder),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: () {
              print('Resposta 2 foi selecionada');
            },
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
            onPressed: () => print('Resposta 3!!!'),
          )
        ],
      ),
    ));
  }
}
