// ignore_for_file: prefer_const_constructors

import 'dart:developer';

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
  }

  @override
  Widget build(BuildContext context) {
    final perguntas = [
      {
        'texto': 'Qual é a sua cor favorita?',
        'respostas': ['Preto', 'Vermelho', 'Verde', 'Branco']
      },
      {
        'texto': 'Qual é o seu animal favorito?',
        'respostas': ['Coelho', 'Cobra', 'Elefante', 'Leão']
      },
      {
        'texto': 'Qual o seu instrutor favorito?',
        'respostas': ['Maria', 'João', 'Leo', 'Pedro']
      },
    ];

    List<String> respostas = perguntas[_perguntaSelecionada].cast()['respostas'];
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Perguntas'),
        ),
      body: Column(
        children: <Widget>[
          Questao(perguntas[_perguntaSelecionada]['texto'].toString()),
          ...respostas.map((t) => Respostas(t, _responder)).toList(),
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
