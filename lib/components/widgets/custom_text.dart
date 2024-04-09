import 'package:flutter/material.dart';

Widget customText({required text, required size ,Color color=Colors.black ,bool bold=false}) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: Text(
      text,
      style: TextStyle(fontSize: size,color:color,fontWeight:bold?FontWeight.bold:FontWeight.normal  ),
    ),
  );
}
