import '../Screens/LoginScreen.dart';
import '../Screens/SignUpScreen.dart';
import '../Widgets/gradient.dart';
import 'package:flutter/material.dart';
import '../Widgets/detectionWidget.dart';
import '../Widgets/textFieldWidgets.dart';

class LoginSignUp extends StatelessWidget {
  const LoginSignUp({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: gradient,
      ),
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 187),
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
                Container(
                  height: MediaQuery.of(context).size.height * 0.62,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: Color(0xff00B0FF),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(120.0),
                          topRight: Radius.circular(120.0))),
                  child: Column(
                    children: [
                      const SizedBox(height: 100),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: 58,
                            child: TextButton(
                              onPressed: () {
                                nextScreen(context, const LoginScreen());
                              },
                              style: TextButton.styleFrom(
                                  side: const BorderSide(
                                      color: Colors.white, width: 1)),
                              child: const Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: 58,
                            child: ElevatedButton(
                              onPressed: () {
                                nextScreen(context, SignUpScreen());
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                              ),
                              child: const Text(
                                'Sign Up',
                                style: TextStyle(
                                  color: Color(0xff00B0FF),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 36),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: 1.5,
                            color: Colors.white,
                          ),
                          const Text(
                            'OR',
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.w700),
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 0.40,
                            height: 1.5,
                            color: Colors.white,
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      const Text(
                        'Continue with',
                        style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.white,
                            fontWeight: FontWeight.w500),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        child: Column(
                          children: [
                            detectionWidgets(
                                img: 'assets/apple.png',
                                title: 'Continue with Apple'),
                            const SizedBox(height: 24),
                            // detectionWidgets(
                            //     img: 'assets/google.png',
                            //     title: 'Continue with Google'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
