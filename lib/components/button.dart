// ignore_for_file: constant_identifier_names, duplicate_ignore

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = DEFAULT,
      required this.cb})
      : super(key: key);

  const Button.big(
      {Key? key,
      required this.text,
      this.big = true,
      this.color = DEFAULT,
      required this.cb})
      : super(key: key);

  const Button.operation(
      {Key? key,
      required this.text,
      this.big = false,
      this.color = OPERATION,
      required this.cb})
      : super(key: key);

  // ignore: constant_identifier_names
  static const DARK = Color.fromRGBO(82, 82, 82, 1);
  // ignore: constant_identifier_names
  static const DEFAULT = Color.fromRGBO(112, 112, 112, 1);
  static const OPERATION = Color.fromRGBO(250, 158, 13, 1);

  final Color color;
  final String text;
  final bool big;
  final void Function(String) cb;

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: big ? 2 : 1,
        child: ElevatedButton(
            onPressed: () => cb(text),
            style: ElevatedButton.styleFrom(
              backgroundColor: color,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(0)),
              ),
            ),
            child: Text(
              text,
              style: const TextStyle(
                color: Color.fromARGB(255, 226, 225, 225),
                fontSize: 32,
                fontWeight: FontWeight.w200,
              ),
            )));
  }
}
