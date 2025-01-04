import 'package:flutter/material.dart';
import 'package:task/widgets/check_box.dart';
import 'package:task/widgets/custom_button.dart';
import 'package:task/widgets/drop_down.dart';
import 'package:task/widgets/radio.dart';
import 'package:task/widgets/slider.dart';
import 'package:task/widgets/switch.dart';
import 'package:task/widgets/text_field.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title:const Text('Sign Up',style: TextStyle(color: Colors.white,),),
        backgroundColor: const Color(0xffed008b),
      ),
      body:Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(
                  height: 5,
                ),
                Image.asset('images/img2.jpg', height: 150,width: 150, ),
                const Text(
                  'Comapny of Cretivity',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  text: 'Email',
                  icon: Icons.email,
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomTextField(
                  obsecureText: true,
                  text: 'Password',
                  icon: Icons.lock,
                ),
                const SizedBox(
                  height: 15,
                ),
                const GenderSelection(),
                Dropdown(),
                const SizedBox(
                  height: 15,
                ),
                const SliderAge(),
                const SizedBox(
                  height: 10,
                ),
                const SwitchNotif(),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('  I agree to therms and conditions'),
                    CheckBox()
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(  
                  child: TextFormField(
                    maxLines: 3,
                    cursorColor: Colors.blue,
                  decoration:const InputDecoration(
                    labelText: 'Notes',
                    labelStyle: TextStyle(color: Colors.black),
                    focusedBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Colors.blue,
                  ),
                            ),
                            enabledBorder: OutlineInputBorder(
                  borderSide:  BorderSide(
                    color: Colors.grey,
                  ),
                            ),
                  ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                CustomButton(title: 'Sign Up'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}