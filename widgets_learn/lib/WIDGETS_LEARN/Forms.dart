// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
final _formKey = GlobalKey<FormState>();

class forms extends StatelessWidget {
  const forms({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(25),
      child: Form(
          child: Column(
            children: [
              TextFormField(validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Write Something";
                }
              return null;
              }),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("Greet!")));
                }
              },
              child: const Text("Validate")),
        ],
      )),
    );
  }
}