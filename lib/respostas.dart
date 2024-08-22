import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  const Respostas(this.texto, this.quandoSelecionado,{super.key});
  final String texto;
  final void Function() quandoSelecionado;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: Colors.blueAccent),
        onPressed: quandoSelecionado,
        child: Text(
          texto,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
