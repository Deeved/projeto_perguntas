import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {

  final int pontuacao;

  Resultado(this.pontuacao);

  String get fraseResultdo {
    if(pontuacao < 8) {
      return 'Parabéns!';
    } else if (pontuacao < 12) {
      return 'você é bom!';
    } else if (pontuacao < 16) {
      return 'Impressionante!';
    } else {
      return 'Nível Jedi!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(fraseResultdo, 
      style: TextStyle(fontSize: 28)
      )
    );
  } 
}