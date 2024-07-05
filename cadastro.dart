import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Cadastro extends StatefulWidget {
  const Cadastro({super.key});

  @override
  State<Cadastro> createState() => __Cadastro();

  __Cadastro() {}
}

class __CadastroState extends State<Cadastro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      //coluna
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            //box dentro da coluna
            child: SizedBox(
              width: 400,
              child: Column(
                children: [
                  Image.network(
                    'https://i.postimg.cc/jSm7V9Kn/logo-um.png',
                  ),

                  SizedBox(
                    height: 20,
                  ),
                  //campo de texto de email

                  Text(
                    'Crie sua conta',
                    style: TextStyle(color: Colors.white, fontSize: 14),
                  ),

                  //espaço entre a linha
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        labelText: 'Email', border: OutlineInputBorder()),
                  ),
                  //box pra espaço entre os campos
                  SizedBox(
                    height: 20,
                  ),

                  //campo de texto de senha
                  TextField(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Senha:', border: OutlineInputBorder()),
                  ),

                  TextField(
                    style: TextStyle(color: Colors.white, fontSize: 14),
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: 'Confirme a senha:',
                        border: OutlineInputBorder()),
                  ),
                  // botao de login
                  const SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: CupertinoButton(
                      padding: const EdgeInsets.all(17),
                      color: Color.fromARGB(255, 55, 56, 55),
                      child: const Text(
                        "Cadastrar",
                        style: TextStyle(
                            color: Color.fromARGB(255, 253, 253, 253),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      ),
                      onPressed: () {},
                    ),
                  ),

//botao cadastrar
                  const SizedBox(
                    height: 10,
                  ),

                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Ou cadastre com:',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                        ),
                      ],
                    ),
                  ),

                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Tooltip(
                          message: "Entrar com Gmail",
                          child: Icon(
                            Icons.abc,
                            color: Colors.pink,
                            size: 24.0,
                            semanticLabel: 'Gmail',
                          )),
                      Tooltip(
                        message: "Entrar com Facebook",
                        child: Icon(
                          Icons.account_box,
                          color: Colors.green,
                          size: 30.0,
                        ),
                      ),
                      Tooltip(
                        message: "Entrar com Instagram",
                        child: Icon(
                          Icons.cyclone,
                          color: Colors.blue,
                          size: 36.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
