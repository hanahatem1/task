import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,required this.title});

  @override
  final String title;
  Widget build(BuildContext context) {
    return MaterialButton(
      shape:RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      color: const Color(0xffed008b),
      child: Text(title,style:const  TextStyle(color: Colors.white),),
      onPressed: (){},
        
      );
    
  }
}
    