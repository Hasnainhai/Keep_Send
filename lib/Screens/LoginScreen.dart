import 'package:keep_send/Screens/Home_Screen.dart';
import '../Screens/login_SignUp.dart';
import '../Widgets/gradient.dart';
import '../Widgets/textFieldWidgets.dart';
import 'package:flutter/material.dart';
import '../OtpScreens/forgetPassword.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

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
              icon: const Icon(Icons.arrow_back_ios_new_sharp)),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 100),
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
              const SizedBox(height: 100),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Email address or phone'),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 20),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      nextScreen(context, const ForgetPassword());
                    },
                    child: const Text(
                      'Forget password? ',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 46.0),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.80,
                height: 60.0,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff00B0FF),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(34),
                      )),
                  onPressed: () {
                    nextScreen(context, const Home_Screen());
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
