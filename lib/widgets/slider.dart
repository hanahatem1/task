
import 'package:flutter/material.dart';

class SliderAge extends StatefulWidget {
  const SliderAge({super.key});

  @override
  State<SliderAge> createState() => _SliderAgeState();
}
double _value=18;
class _SliderAgeState extends State<SliderAge> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Age:${_value.toInt()}'),
        Slider(
        activeColor: const Color(0xffed008b),
        min: 0, max: 100,
        divisions: 100,
        value: _value,
        onChanged: (double val) {
          setState(() {
        _value = val;
          });
        },
        ),
      ],
    );
  }
}