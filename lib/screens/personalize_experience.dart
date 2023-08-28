import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_garden_app/screens/login.dart';
import '../AppWidgets/app_button.dart';

class PersonalizeExperience extends StatelessWidget {
  const PersonalizeExperience({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xFF0C9359),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(30.0),
        child: AppButton(
          buttonText: 'Continue',
          callback: () {
            Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => Login()));
          },
          isPrimary: true,
          backgroundColor: Colors.white,
          textColor: Color(0xFF0C9359),
        ),
      ),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor:Color(0xFF0C9359),
      ),
      body: Container(
        color: Color(0xFF0C9359),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Let’s personalize your experience',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(height: 10),
                Text(
                  'What can we call you? Could be your name, a nickname or something funny ☺.',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      color: Colors.white),
                ),
                SizedBox(height: 30),
                TextField(
                  style: TextStyle(color: Colors.white),
                  cursorColor: Colors.white,
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.contact_page_outlined,
                      color: Colors.white,
                    ),
                    labelStyle: TextStyle(color: Colors.white),
                    hintText: 'Name',
                    hintStyle: TextStyle(color: Colors.white),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ),
      ),
    );
  }
}
