import 'package:flutter/material.dart';

Widget myColum() {
  return Colum(
    mainAxisAlignment: MainAxisAlignment.center,
    childrem: [
      text('Hello, i am a child of colum', style: TextStyle(fontSize: 20)),
      SizedBox(height: 10,)
      Icon(Icons.star, color: Colors.yellow),
    ],
  );
}