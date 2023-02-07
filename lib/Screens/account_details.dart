import 'package:flutter/material.dart';
import 'package:keep_send/Screens/Home_Screen.dart';
import 'package:keep_send/Screens/conformDetails.dart';
import 'package:keep_send/Widgets/gradient.dart';
import '../Widgets/textFieldWidgets.dart';

class AccountDetails extends StatelessWidget {
  const AccountDetails({super.key});
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
              nextScreenReplace(context, const Home_Screen());
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Money Transfer'),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 44,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0)),
                        ),
                        onPressed: () {},
                        child: const Text('Bank Transfer')),
                  ),
                  SizedBox(
                    height: 44,
                    width: MediaQuery.of(context).size.width * 0.40,
                    child: TextButton(
                        style: TextButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                              side: const BorderSide(
                                  color: Colors.blue, width: 2)),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Other Wallet',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ],
              ),
              const SizedBox(height: 46.0),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Bank Name'),
                  hintText: 'Enter Bank Name',
                  hintStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Accound Number'),
                  hintText: 'Enter Accound Number',
                  hintStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(height: 24.0),
              TextFormField(
                style: const TextStyle(color: Colors.white),
                decoration: textInputDecoration.copyWith(
                  fillColor: Colors.white,
                  label: const Text('Branch Code'),
                  hintText: 'Enter Branch Code',
                  hintStyle: const TextStyle(color: Colors.white),
                  labelStyle: const TextStyle(
                    color: Colors.white,
                  ),
                ),
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
                    ),
                  ),
                  onPressed: () {
                    nextScreen(context, const ConformDetails());
                  },
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
