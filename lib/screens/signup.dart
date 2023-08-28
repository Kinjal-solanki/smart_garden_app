import 'package:flutter/material.dart';
import 'package:smart_garden_app/AppWidgets/app_button.dart';
import 'package:smart_garden_app/AppWidgets/app_icon_button.dart';
import 'package:smart_garden_app/screens/personalize_experience.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0C9359),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Container(
            margin: EdgeInsets.only(left: 16, right: 16),
            color: Color(0xFF0C9359),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppButton(
                  buttonText: 'Register',
                  callback: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => const PersonalizeExperience()));
                  },
                  isPrimary: true,
                  backgroundColor: Colors.white,
                  textColor: Color(0xFF0C9359),
                ),
                SizedBox(height: 20),
                Text(
                  'Already have an account? Login',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 20), // Add spacing if needed
              ],
            ),
          ),
          backgroundColor: Color(0xFF0C9359),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height,
              margin: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  SizedBox(height: 30,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Register on Aepod',
                        style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Text(
                        'Create an Aepod account, We can’t wait to have you.',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.white,
                          ),
                          labelStyle: TextStyle(color: Colors.white),
                          hintText: 'Email address',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      TextField(
                        style: TextStyle(color: Colors.white),
                        obscureText: true,
                        cursorColor: Colors.white,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.white,
                          ),
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.white),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Text(
                        'Or Register using social media',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.white),
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: AppIconButton(
                              buttonText: "Facebook",
                              icon: "asset/facebook.png",
                              callback: () {},
                              backgroundColor: Color(0xFF0082CD),
                              textColor: Colors.white,
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: AppIconButton(
                              buttonText: "Google",
                              icon: "asset/google_white.png",
                              callback: () {},
                              backgroundColor: Color(0xFF0082CD),
                              textColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
