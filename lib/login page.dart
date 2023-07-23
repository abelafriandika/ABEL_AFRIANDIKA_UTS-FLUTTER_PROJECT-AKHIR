import 'package:flutter/material.dart';
import 'package:project_abel_utts/login/LOGIN/my_textfield.dart';
import 'package:project_abel_utts/login/login/my_button.dart';


class LoginPage extends StatelessWidget {
 LoginPage({super.key});



final usernameController = TextEditingController();
  final passwordController = TextEditingController();


void signUserIn() {}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),

              //logo
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'lib/image/logo login.jpg',
                    height: 150,
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),

              //welcome
              const Text(
                'WELCOME!',
                style: TextStyle(
                  color: Color.fromARGB(255, 49, 86, 207),
                  fontSize: 16,
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
                height: 15,
              ),

              //password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),

              const SizedBox(
                height: 15,
              ),

              //forgot password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lupa Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 25,
              ),

              //sing in button
              MyButton(
                  //onTap: signUserIn,
                  )
            ],
          ),
        ),
      ),
    );
  }
}
