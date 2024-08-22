// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'questao.dart';
import 'respostas.dart';

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
  final List<Map<String, Object>> _pergunta = const [
    {
      'texto': "Qual sua cor favorita",
      'resposta': ["Preto", "Azul", "Amarelo", "Verde"]
    },
    {
      'texto': "Qual seu jogo favorito",
      'resposta': ["Super Mario", "Sonic", "Minecraft", "Pokemon"]
    },
    {
      'texto': "qual sua linguagem favorita",
      'resposta': ["Java", "JS", "C#", "Python"]
    }
  ];
  void _responder() {
    setState(() {
      indice++;
    });
    
  }

  bool get temPerguntaSelecionada {
    return indice < _pergunta.length;
  }

  @override
  Widget build(BuildContext context) {
    List<String> respostas =temPerguntaSelecionada? _pergunta[indice].cast()['resposta']:[];
    List<Widget> widgets =
        respostas.map((t) => Respostas(t, _responder)).toList();
    //for (String respostaTxt in  respostas) {
    //widgets.add(Respostas(respostaTxt, _responder));
    //}

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
      body: temPerguntaSelecionada? Column(
        children: [Questao(_pergunta[indice]['texto'].toString()), ...widgets],
      ):null,
    ));
  }
}
