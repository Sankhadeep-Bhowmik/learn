import 'package:flutter/material.dart';

class Form_Field extends StatefulWidget {
  const Form_Field({super.key});
  

  @override
  State<Form_Field> createState() => _Form_FieldState();
}

class _Form_FieldState extends State<Form_Field> {
  final List<String> titles =[
    '',
    '',
    '', 
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        autovalidateMode:  AutovalidateMode.always,
        onChanged: (){
          setState(() {
            Form.of(primaryFocus!.context!)!.save();
          });
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(
            3,
            (int index){
              return Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      onSaved: (String? value){
                        if(value!=null)
                        {
                          titles[index]=value;
                        }
                      },
                    ),
                    const SizedBox(height: 10),
                    Card(
                      child: Padding(padding:const EdgeInsets.all(8),
                      child: Text(titles[index]),
                      ),
                  )
              ],
            ),);
          }),
        ),
      ),
    );
  }
}