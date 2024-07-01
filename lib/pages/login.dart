import 'package:flutter/material.dart';
import 'package:crud_app/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  var emailController = TextEditingController(text: "");
  var senhaController = TextEditingController(text: "");
  bool isObscureTest = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 59, 58, 58),
        body: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: ConstrainedBox(
              constraints:
                  BoxConstraints(maxHeight: MediaQuery.of(context).size.height),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(child: Container()),
                  Expanded(
                      flex: 2,
                      child: Image.network(
                          "https://gustavosouza.dev.br/wp-content/uploads/2022/11/logo-2.png")),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    'Já tem cadastro?',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 220, 217, 217)),
                  ),
                  const Text(
                    'Faça seu login e acesse_',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Color.fromARGB(255, 207, 206, 206)),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 40,
                      child: TextField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        decoration: const InputDecoration(
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white12)),
                            hintText: "Email",
                            hintStyle: TextStyle(color: Colors.white60),
                            prefixIcon:
                                Icon(Icons.person, color: Colors.white60)),
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    alignment: Alignment.center,
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    height: 40,
                    child: TextField(
                      obscureText: isObscureTest,
                      controller: senhaController,
                      style: const TextStyle(color: Colors.white),
                      decoration: InputDecoration(
                          enabledBorder: const UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white12)),
                          hintText: "Senha",
                          hintStyle: const TextStyle(color: Colors.white60),
                          prefixIcon:
                              const Icon(Icons.lock, color: Colors.white60),
                          suffixIcon: InkWell(
                            onTap: () {
                              setState(() {
                                isObscureTest = !isObscureTest;
                              });
                            },
                            child: Icon(
                                isObscureTest
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                                color: Colors.white60),
                          )),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      child: SizedBox(
                        width: double.infinity,
                        child: TextButton(
                            onPressed: () {
                              if (emailController.text.trim() ==
                                      "email@email.com" &&
                                  senhaController.text.trim() == "123456") {
                                Navigator.pushReplacement(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => const Home()));
                              } else {
                                ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                        content:
                                            Text("Error ao executar login")));
                              }
                            },
                            style: ButtonStyle(
                                shape: MaterialStateProperty.all(
                                    RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(10))),
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 103, 58, 183))),
                            child: const Text("ENTRAR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w700))),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  Expanded(child: Container()),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 40,
                      child: const Text('Esqueci minha senha',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 254, 254)))),
                  Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.symmetric(horizontal: 30),
                      height: 40,
                      child: const Text('Criar conta',
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 255, 254, 254)))),
                  const SizedBox(
                    height: 40,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
