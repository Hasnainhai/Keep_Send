import 'package:flutter/material.dart';
import 'package:keep_send/Screens/Home_Screen.dart';
import 'package:keep_send/Screens/account_details.dart';
import 'package:keep_send/Widgets/gradient.dart';
import 'package:keep_send/Widgets/textFieldWidgets.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ConformDetails extends StatelessWidget {
  const ConformDetails({super.key});
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
            onPressed: () {
              nextScreenReplace(context, const AccountDetails());
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text('Conform'),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.close))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20.0),
          child: Column(
            children: [
              const SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Amount',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Edit',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.blue,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16.0),
              Container(
                height: MediaQuery.of(context).size.width * 0.65,
                width: MediaQuery.of(context).size.width * 0.90,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(40.0, 26.0, 40.0, 26.0),
                  child: Column(
                    children: const [
                      ListTile(
                        leading: Text(
                          'Bank Name',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff333333),
                          ),
                        ),
                        trailing: Text(
                          'Amount',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Send',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff333333),
                          ),
                        ),
                        trailing: Text(
                          'Amount',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                      ListTile(
                        leading: Text(
                          'Total',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Color(0xff333333),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          'Amount',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                    ],
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
                    Alert(
                        context: context,
                        title: "Conform Password",
                        content: Column(
                          children: const <Widget>[
                            SizedBox(height: 10.0),
                            Text(
                              'Please enter your KeepSend',
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xff222222)),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              'Password to start your Transfer',
                              style: TextStyle(
                                  fontSize: 16.0, color: Color(0xff222222)),
                            ),
                            TextField(
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                labelText: 'Password',
                              ),
                            ),
                          ],
                        ),
                        buttons: [
                          DialogButton(
                            onPressed: () {
                              Alert(
                                context: context,
                                content: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset('assets/conform.png'),
                                    const SizedBox(height: 16.0),
                                    const Text(
                                      'You Transfer to Person Name',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff1A1A1A),
                                      ),
                                    ),
                                    const SizedBox(height: 5.0),
                                    const Text(
                                      'Amount',
                                      style: TextStyle(
                                        fontSize: 18,
                                        color: Color(0xff1A1A1A),
                                      ),
                                    ),
                                  ],
                                ),
                                // title: "RFLUTTER ALERT",
                                // desc:
                                //     "Flutter is more awesome with RFlutter Alert.",
                                buttons: [
                                  DialogButton(
                                      height: 46.0,
                                      width: MediaQuery.of(context).size.width *
                                          0.60,
                                      child: const Text(
                                        "Done",
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                      onPressed: () {
                                        nextScreen(
                                            context, const Home_Screen());
                                      })
                                ],
                              ).show();
                            },
                            child: const Text(
                              "Conform",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                          )
                        ]).show();
                  },
                  child: const Text('Conform'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
