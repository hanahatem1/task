import 'package:flutter/material.dart';
import 'package:task/register.dart';
import 'package:task/widgets/check_box.dart';
import 'package:task/widgets/custom_button.dart';
import 'package:task/widgets/text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xffed008b),
        title: const Text(
          'Sign in',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            Image.asset('images/img2.jpg',height: 150,width: 150,),
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
            const Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [Text('Remember Me'), CheckBox()],
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            CustomButton(
              title: 'Sign In',
            ),
            const SizedBox(
              height: 15,
            ),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterPage(),
                    ),
                  );
                },
                child: const Text(
                  'Don\'t have an account?Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
