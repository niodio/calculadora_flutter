import '/components/button.dart';
import '/components/button_row.dart';
import 'package:flutter/material.dart';

class Keyboard extends StatelessWidget {
  final void Function(String) cb;
  // ignore: use_key_in_widget_constructors, prefer_const_constructors_in_immutables
  Keyboard(this.cb);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Column(
        children: [
          ButtonRow(buttons: [
            Button.big(text: 'AC', color: Button.DARK, cb: cb),
            Button(text: '%', color: Button.DARK, cb: cb),
            Button.operation(text: '/', cb: cb)
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(text: '7', cb: cb),
            Button(text: '8', cb: cb),
            Button(text: '9', cb: cb),
            Button.operation(text: 'X', cb: cb)
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(text: '4', cb: cb),
            Button(text: '5', cb: cb),
            Button(text: '6', cb: cb),
            Button.operation(text: '-', cb: cb)
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button(text: '1', cb: cb),
            Button(text: '2', cb: cb),
            Button(text: '3', cb: cb),
            Button.operation(text: '+', cb: cb)
          ]),
          SizedBox(
            height: 1,
          ),
          ButtonRow(buttons: [
            Button.big(text: '0', cb: cb),
            Button(text: '.', cb: cb),
            Button.operation(text: '=', cb: cb),
          ]),
        ],
      ),
    );
  }
}
