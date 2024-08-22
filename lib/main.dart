// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'questao.dart';

main() {
  runApp(PerguntaApp());
}

class PerguntaApp extends StatefulWidget {
  const PerguntaApp({super.key});

 

  @override
  State<PerguntaApp> createState() => _PerguntaAppState();
}

class _PerguntaAppState extends State<PerguntaApp> {
  var indice = 0;

  void _responder() {
    setState(() {
      indice++;
    });
    print(indice);
  }

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
          Questao(pergunta[indice]),
          ElevatedButton(
            onPressed: _responder,
            child: Text("Resposta 1"),
          ),
          ElevatedButton(
            onPressed: _responder,
            child: Text("Resposta 2"),
          ),
          ElevatedButton(
            onPressed: _responder,
            child: Text("Resposta 3"),
          ),
        ],
      ),
    ));
  }
}
