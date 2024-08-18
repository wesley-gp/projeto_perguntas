// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatelessWidget {
  const PerguntaApp({super.key});
  @override
  Widget build(BuildContext context) {
    final pergunta = [
      "Qual sua cor favorita",
      'Qual seu jogo favorito',
      'qual sua linguagem favorita'
    ];
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text(
          "Perguntas",
          style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: Color.fromARGB(255, 38, 104, 211),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(pergunta[0]),
          ElevatedButton(
            onPressed: null,
            child: Text("Resposta 1"),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("Resposta 2"),
          ),
          ElevatedButton(
            onPressed: null,
            child: Text("Resposta 3"),
          ),
        ],
      ),
    ));
  }
}
