import 'package:flutter/material.dart';
import 'package:keep_send/Screens/Home_Screen.dart';
import '../Widgets/gradient.dart';
import '../Widgets/textFieldWidgets.dart';

class NewPassword extends StatelessWidget {
  const NewPassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: gradient,
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('New Password'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Column(
            children: [
              const SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.lock,
                    color: Colors.white,
                    size: 70,
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'create new password',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              const SizedBox(height: 46.0),
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Enter New Password'),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              TextFormField(
                obscureText: true,
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Conform Password'),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                  prefixIcon: const Icon(
                    Icons.password_sharp,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 46),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      child: const Text('Conform'),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
