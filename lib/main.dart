// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

main() => runApp(PerguntaApp());

class PerguntaApp extends StatelessWidget {
  // const PerguntaApp({Key? key}) : super(key: key);
  
  void responder() {
    perguntaSelecionada++;
    print(perguntaSelecionada);
  }

  var perguntaSelecionada = 0;

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
          Text(perguntas[perguntaSelecionada]),
          ElevatedButton(child: Text('Resposta 1'), onPressed: responder),
          ElevatedButton(
            child: Text('Resposta 2'),
            onPressed: responder,
          ),
          ElevatedButton(
            child: Text('Resposta 3'),
              onPressed: responder,
          )
        ],
      ),
    ));
  }
}
