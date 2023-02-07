import 'package:flutter/material.dart';
import 'package:keep_send/Screens/account_details.dart';
import 'package:keep_send/Widgets/textFieldWidgets.dart';
import '../Widgets/gradient.dart';
import 'package:currency_picker/currency_picker.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({super.key});
  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  final TextEditingController _currencyPicker = TextEditingController();
  final TextEditingController _currencyPicker2 = TextEditingController();
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
          title: const Text('Money Transfer'),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                const SizedBox(height: 46.0),
                Container(
                  height: 176,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Image.asset('assets/card.png'),
                        ),
                        const SizedBox(width: 20),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.85,
                          child: Image.asset('assets/card2.png'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(width: 20.0),
                    Text(
                      'You Transfer:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 70.0,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 16,
                      ),
                      const Text(
                        '10000.00',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.20),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'GBP',
                            hintStyle: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: _currencyPicker,
                          // decoration: textInputDecoration.copyWith(),
                          onTap: () {
                            showCurrencyPicker(
                              favorite: ['GBP', 'PKR', 'INR'],
                              showFlag: true,
                              context: context,
                              onSelect: (Currency currency) {
                                setState(() {
                                  _currencyPicker.text = currency.name;
                                  _currencyPicker.text =
                                      currency.flag.toString();
                                });
                              },
                              theme: CurrencyPickerThemeData(
                                flagSize: 25,
                                titleTextStyle: const TextStyle(fontSize: 18),
                                subtitleTextStyle:
                                    const TextStyle(fontSize: 18),
                                bottomSheetHeight:
                                    MediaQuery.of(context).size.height * 0.8,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: const [
                    SizedBox(width: 20.0),
                    Text(
                      'Recipient Receives:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Container(
                  height: 70.0,
                  width: MediaQuery.of(context).size.width * 0.90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        width: 35,
                      ),
                      const Text(
                        '860.00',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(width: MediaQuery.of(context).size.width * 0.20),
                      Container(
                        height: 60,
                        width: 1,
                        color: Colors.black,
                      ),
                      const SizedBox(width: 40),
                      Expanded(
                        child: TextField(
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            hintText: 'PAK',
                            hintStyle: TextStyle(
                                fontSize: 20,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide.none,
                            ),
                          ),
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w500,
                          ),
                          controller: _currencyPicker2,
                          onTap: () {
                            showCurrencyPicker(
                              favorite: ['GBP', 'PKR', 'INR'],
                              showFlag: true,
                              context: context,
                              onSelect: (Currency currency) {
                                setState(() {
                                  _currencyPicker2.text = currency.name;
                                  _currencyPicker2.text =
                                      currency.flag.toString();
                                });
                              },
                              theme: CurrencyPickerThemeData(
                                flagSize: 25,
                                titleTextStyle: const TextStyle(fontSize: 18),
                                subtitleTextStyle:
                                    const TextStyle(fontSize: 18),
                                bottomSheetHeight:
                                    MediaQuery.of(context).size.height * 0.8,
                              ),
                            );
                          },
                        ),
                      ),
                    ],
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
                        )),
                    onPressed: () {
                      nextScreen(context, const AccountDetails());
                    },
                    child: const Text('Send'),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Super Fast No Fee Transfer To Banks',
                  style: TextStyle(fontSize: 15.0, color: Colors.white),
                ),
                const SizedBox(height: 16),
                const ListTile(
                  leading: Text(
                    'Transfer History',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                  trailing: Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
              ],
            ),
          ],
        ),
        drawer: Drawer(
          child: ListView(
            children: [
              Container(
                height: 89,
                color: const Color(0xff00B0FF),
                child: DrawerHeader(
                  child: Row(
                    children: [
                      const SizedBox(height: 10),
                      const Center(
                        child: CircleAvatar(
                          radius: 30,
                          child: Icon(Icons.add_a_photo),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "Hasnain Haider",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "hasnain@gmail.com",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const Divider(
                  thickness: .06, color: Color.fromARGB(255, 30, 29, 29)),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  height: 63,
                  width: MediaQuery.of(context).size.width * 1,
                  child: const Text(
                    'share your referral code with your friend you and your friend both will get \$3 bonus after their first transfer of \$50 or more.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff222222),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(width: 10.0),
                  Text.rich(
                    TextSpan(
                      text: 'Your code:  ',
                      children: [
                        TextSpan(
                          text: 'HASNAIN',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                children: const [
                  SizedBox(width: 10),
                  Text(
                    'INVITE FRIENDS',
                    style: TextStyle(fontSize: 16, color: Color(0xff00B0FF)),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              const Divider(
                color: Colors.grey,
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.person,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("My Account "),
                subtitle: const Text(
                  'Make changes to your account',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.receipt_long_outlined,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("Transfer History"),
                subtitle: const Text(
                  'View your transfers',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.payment,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("Payment"),
                subtitle: const Text(
                  'Manage your payment Methods',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.help_outline,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("Help Topics"),
                subtitle: const Text(
                  'Find answers to common questions',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.error_outline,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("About"),
                subtitle: const Text(
                  'Legal notices and agreements',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
              ListTile(
                leading: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: const Color.fromARGB(255, 195, 214, 198),
                  ),
                  child: const Icon(
                    Icons.logout_outlined,
                    color: Color.fromARGB(255, 29, 127, 173),
                  ),
                ),
                title: const Text("log out"),
                subtitle: const Text(
                  'Logged out you account',
                  style: TextStyle(
                    fontSize: 11,
                  ),
                ),
                onTap: () {},
                trailing: const Icon(Icons.arrow_forward_ios),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
