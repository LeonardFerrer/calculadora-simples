import 'package:calculadora_simples/componentes/status.dart';
import 'package:flutter/material.dart';

class Keys extends StatelessWidget {
  final String value;
  final Status tipo;
  final VoidCallback onPressed;

  const Keys(
      {Key? key,
      required this.value,
      required this.tipo,
      required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: SizedBox(
        height: 75.0,
        width: 75.0,
        child: FittedBox(
          child: FloatingActionButton(
              onPressed: onPressed,
              backgroundColor: const Color(0xfff6f3f3),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                value,
                style: const TextStyle(color: Colors.black, fontSize: 25.0),
              )),
        ),
      ),
    );
  }
}
