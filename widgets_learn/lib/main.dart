import 'package:flutter/material.dart';
import 'package:widgets_learn/WIDGETS_LEARN/Form_Field.dart';
import 'package:widgets_learn/WIDGETS_LEARN/Forms.dart';
void main()
{
  runApp(myApp());
}
class myApp extends StatelessWidget {
  const myApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Form_Field(),
    );
  }
}