// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  final String texto;
  const Questao(this.texto, {super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: const TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
        
      ),
    );
  }
}
