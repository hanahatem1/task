import 'package:flutter/material.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({super.key});

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  String SelectedVal='Single';
  final List<String> items=['Single','Married','Divorced'];

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField<String>(
      decoration: const InputDecoration(
        labelText: 'status',
        labelStyle: TextStyle(color: Colors.blue),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue
          ),
        ),
      ),
      iconEnabledColor: const Color(0xffed008b),
      value: SelectedVal,
      focusColor: Colors.white,
      items: items.map<DropdownMenuItem<String>>((String value)
      {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value)
          );
      }).toList(),
       onChanged: (String? newValue){
        setState(() {
          SelectedVal=newValue!;
        });
        }
       );
  }
}