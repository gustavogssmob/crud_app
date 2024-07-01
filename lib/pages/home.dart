import 'package:crud_app/pages/cadastro.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
            title: const Text("Home"),
            backgroundColor: const Color.fromARGB(255, 103, 58, 183)),
        drawer: Drawer(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        child: const Text("Dados cadastrais")),
                    onTap: () {
                      Navigator.pop(context);
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Cadastro()));
                    }),
                const Divider(),
                const SizedBox(height: 10),
                InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        child: const Text("Configurações")),
                    onTap: () {}),
                const Divider(),
                const SizedBox(height: 10),
                InkWell(
                    child: Container(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        width: double.infinity,
                        child: const Text("Termos de uso e Privacidade")),
                    onTap: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
