import 'dart:math';

import 'package:cara_ou_coroa/main.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({ Key? key}) : super(key: key);

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  late int opcao;

  @override
  void initState() {
    super.initState();
    setState(() {
      opcao = Random().nextInt(2);
    });
  }

  final List<String> imagens = [
    "moeda_cara.png",
    "moeda_coroa.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/${imagens[opcao]}"),
          GestureDetector(onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const Home())), child: Image.asset("assets/botao_voltar.png")),
        ],
      ),  
    );
  }
}