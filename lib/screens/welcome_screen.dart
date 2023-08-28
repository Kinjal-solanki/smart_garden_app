import 'package:flutter/material.dart';
import 'package:smart_garden_app/AppWidgets/app_button.dart';
import 'package:smart_garden_app/screens/signup.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
    color: Color(0xFF0C9359),
      child: SafeArea(
        child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(100.0), // here
              child: AppBar(
                backgroundColor: Color(0xFF0C9359),
                flexibleSpace: Container(
                  margin: const EdgeInsets.only(left: 16),
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60,
                      ),
                      Row(
                        children: [
                          CircleAvatar(),
                          SizedBox(
                            width: 10,
                          ),
                          Text('AEPOD',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white))
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            backgroundColor: Color(0xFF0C9359),
            body: Column(
              children: [
                Expanded(child: Container()),
                Expanded(
                    child: Container(
                  margin: EdgeInsets.only(left: 16, right: 16, bottom: 16),
                  child: Column(
                    children: [
                      Expanded(
                          child: Container(
                              child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'Welcome to Aepod',
                            style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            'Grow plants easily from your home with our award-winning pods',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ],
                      ))),
                      Container(
                        margin: EdgeInsets.only(bottom: 16),
                        child: Column(
                          children: [
                            AppButton(
                                buttonText: 'Register',
                                callback: () {
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) => const SignUp()));
                                },
                                isPrimary: true,
                                backgroundColor: Colors.white,
                                textColor: Color(0xFF0C9359)),
                            const SizedBox(
                              height: 10,
                            ),
                            AppButton(
                                buttonText: 'Login',
                                callback: () {},
                                textColor: Colors.white),
                          ],
                        ),
                      )
                    ],
                  ),
                )),
              ],
            )),
      ),
    );
  }
}
