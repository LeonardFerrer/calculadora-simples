import 'package:calculadora_simples/componentes/keys.dart';
import 'package:calculadora_simples/componentes/status.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _textFieldController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // Tela
            color: Colors.amber,
            width: MediaQuery.of(context).size.width,
            height: 300,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 225,
                  color: Colors.blue,
                ),
                Container(
                  height: 75,
                  color: Colors.green,
                  child: const Center(
                    child: Text('ola',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 30,
                        )),
                  ),
                ),
              ],
            ),
          ),
          Container(
            // Teclado
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height - 300,
            //color: Colors.blue,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Keys(value: "CE", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "()", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "%", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "/", tipo: Status.NUMERO, onPressed: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Keys(value: "7", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "8", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "9", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "X", tipo: Status.NUMERO, onPressed: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Keys(value: "4", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "5", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "6", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "-", tipo: Status.NUMERO, onPressed: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Keys(value: "1", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "2", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "3", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "+", tipo: Status.NUMERO, onPressed: () {}),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Keys(value: "+/-", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "0", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: ",", tipo: Status.NUMERO, onPressed: () {}),
                    Keys(value: "=", tipo: Status.NUMERO, onPressed: () {}),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
