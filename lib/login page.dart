import 'package:flutter/material.dart';
import 'package:project_abel_utts/login/LOGIN/Text_field.dart';
import 'package:project_abel_utts/login/login/my_button.dart';


class LoginPage extends StatelessWidget {
 LoginPage({super.key});



final usernameController = TextEditingController();
  final passwordController = TextEditingController();


void Login() {}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 68, 137, 240),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),

              //logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/logo login.jpg',
                    height: 150,
                    width: 250,
                  ),
                ],
              ),
              const SizedBox(
                height: 180,
              ),

              //welcome
              const Text(
                'WELCOME!',
                style: TextStyle(
                  color: Color.fromARGB(255, 31, 34, 42),
                  fontSize: 25,
                ),
              ),

              const SizedBox(
                height: 25,
              ),

              //username
              MyTextField(
                controller: usernameController,
                hintText: "Username",
                obscureText: false,
              ),

              const SizedBox(
                height: 25,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(
                height: 25,
              ),

              const SizedBox(
                height: 50,
              ),

              //login button
              const MyButton(
                  //onTap: login,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
// menggunakan stateless karena widget ini tidak memiliki data yang perlu diubah dan tidak memerlukan pemantauan perubahan status internal.