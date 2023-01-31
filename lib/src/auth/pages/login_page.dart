import 'package:flutter/material.dart';
import 'package:home_iot/src/auth/widgets/my_button.dart';
import 'package:home_iot/src/auth/widgets/square_tile.dart';
import 'package:home_iot/src/auth/widgets/my_text_field.dart';
import 'package:home_iot/src/home.dart';

import 'package:home_iot/src/shared/colors.dart';

class LoginPage extends StatelessWidget {
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginPage({super.key});

  void signUserIn(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Home()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primaryColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 25),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: const Color.fromARGB(20, 0, 29, 61),
                    borderRadius: BorderRadius.circular(15)),
                child: Image.asset(
                  'assets/icon/smart-home.png',
                  width: 150,
                  height: 150,
                  color: secondaryColor,
                ),
              ),
              const SizedBox(height: 25),
              Text(
                'Login',
                style: TextStyle(
                  color: secondaryColor,
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 25),
              MyTextField(
                controller: usernameController,
                hintText: 'Username',
                obscureText: false,
                prefixIcon: Icons.person,
              ),
              const SizedBox(height: 10),
              MyTextField(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
                prefixIcon: Icons.password,
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(
                        color: activeColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              MyButton(
                onTap: () {
                  signUserIn(context);
                },
                text: 'Sign In',
              ),
              const SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: secondaryColor,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(
                          color: linkColor,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: secondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SquareTile(imagePath: 'assets/images/google.png'),
                  SizedBox(width: 25),
                  SquareTile(imagePath: 'assets/images/apple.png')
                ],
              ),
              const SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(
                      color: linkColor,
                    ),
                  ),
                  const SizedBox(width: 4),
                  Text(
                    'Register now',
                    style: TextStyle(
                      color: activeColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
