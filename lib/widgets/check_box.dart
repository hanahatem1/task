
import 'package:flutter/material.dart';

class CheckBox extends StatefulWidget {
  const CheckBox({super.key});

  @override
  State<CheckBox> createState() => _CheckBoxState();
}

class _CheckBoxState extends State<CheckBox> {
bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return  Checkbox(
      activeColor: const Color(0xffed008b),
      value:isChecked,
       onChanged: (val){
        setState(() {
          isChecked=val!;
        });
       }
       );
  }
}