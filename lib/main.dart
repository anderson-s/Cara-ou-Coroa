import 'package:cara_ou_coroa/jogar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/logo.png"),
          GestureDetector(
            child: Image.asset("assets/botao_jogar.png"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: ((context) => const Jogar()),
              ),
            ),
          )
        ],
      ),
    );
  }
}
