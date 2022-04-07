// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:projeto_perguntas/respostas.dart';
import './questao.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _perguntaSelecionada = 0;

  void _responder() {
    setState(() {
      _perguntaSelecionada++;
    });
    print(_perguntaSelecionada);
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
          Questao(perguntas[_perguntaSelecionada]),
          Respostas('Resposta 01'),
          Respostas('Resposta 02'),
          Respostas('Resposta 03'),
        ],
      ),
    ));
  }
}

class PerguntaApp extends StatefulWidget {
  // const PerguntaApp({Key? key}) : super(key: key);

  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
