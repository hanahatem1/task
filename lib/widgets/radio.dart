import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  const GenderSelection({super.key});

  @override
  State<GenderSelection> createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  String? gender;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Gender:',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,),),
          Expanded(
            child: RadioListTile<String>(
              activeColor: const Color(0xffed008b),
              title: const Text('Male'),
              value: 'male',
              groupValue: gender,
              onChanged: (String? val) {
                setState(() {
                  gender = val;
                });
              },
            ),
          ),
          Expanded(
            child: RadioListTile<String>(
              activeColor: const Color(0xffed008b),
              title: const Text('Female'),
              value: 'female',
              groupValue: gender,
              onChanged: (String? val) {
                setState(() {
                  gender = val;
                });
              },
            ),
          ),
        ],
      ),
    );
  }
}
