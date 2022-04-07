

import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {

  final String texto;

  final void Function() quandoSelecioando;

  Respostas(this.texto, this.quandoSelecioando);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(8),
      child: ElevatedButton(
        onPressed: quandoSelecioando,
        child: Text(texto),
      ),
    );
  }
}