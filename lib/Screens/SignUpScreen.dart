import 'package:keep_send/Screens/Home_Screen.dart';
import '../Screens/login_SignUp.dart';
import '../Widgets/gradient.dart';
import 'package:flutter/material.dart';
import '../Widgets/textFieldWidgets.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: gradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
              onPressed: () {
                nextScreenReplace(context, const LoginSignUp());
              },
              icon: const Icon(Icons.arrow_back_ios_new)),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: Column(
                children: [
                  const SizedBox(height: 46),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Image(
                        height: 170.0,
                        width: 250.0,
                        image: AssetImage('assets/logo.png'),
                      ),
                    ],
                  ),
                  const SizedBox(height: 46.0),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: textInputDecoration.copyWith(
                      fillColor: Colors.white,
                      label: const Text('First Name'),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: textInputDecoration.copyWith(
                      fillColor: Colors.white,
                      label: const Text('Last Name'),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    style: const TextStyle(color: Colors.white),
                    decoration: textInputDecoration.copyWith(
                      fillColor: Colors.white,
                      label: const Text('Email Address'),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.mail,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: textInputDecoration.copyWith(
                      fillColor: Colors.white,
                      label: const Text('Password'),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 24.0),
                  TextFormField(
                    obscureText: true,
                    style: const TextStyle(color: Colors.white),
                    decoration: textInputDecoration.copyWith(
                      fillColor: Colors.white,
                      label: const Text('Confirm Password'),
                      labelStyle: const TextStyle(
                        color: Colors.white,
                      ),
                      prefixIcon: const Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  const SizedBox(height: 44.0),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.80,
                    height: 60.0,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff00B0FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(34),
                        ),
                      ),
                      onPressed: () {
                        nextScreen(context, const Home_Screen());
                      },
                      child: const Text('Sign Up'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
