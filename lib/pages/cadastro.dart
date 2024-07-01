import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tela de Cadastro"),
      ),
      body: const Center(
        child: Text("Dados cadastrais"),
      ),
    );
  }
}
