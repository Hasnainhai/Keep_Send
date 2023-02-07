import '../Screens/login_SignUp.dart';
import 'package:flutter/material.dart';
import '../Widgets/gradient.dart';
import '../Widgets/textFieldWidgets.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      const Duration(seconds: 5),
      () => nextScreen(
        context,
        const LoginSignUp(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(gradient: gradient),
      child: const Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: Image(
                height: 200.0,
                width: 220.0,
                image: AssetImage('assets/logo.png'))),
      ),
    );
  }
}
