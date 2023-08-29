import 'package:flutter/material.dart';

import '../AppWidgets/app_button.dart';
import 'home.dart';

class AepodSetup extends StatelessWidget {
  const AepodSetup({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF0C9359),
      child: SafeArea(
        child: Scaffold(
          bottomNavigationBar: Padding(
            padding: const EdgeInsets.all(16.0),
            child: AppButton(
              buttonText: 'Continue',
              callback: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Home()));
              },
              isPrimary: true,
              backgroundColor: Colors.white,
              textColor: Color(0xFF0C9359),
            ),
          ),
          backgroundColor: Color(0xFF0C9359),
            body: Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,),
                  Text(
                    'Let’s set you up',
                    style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const Text(
                    'Sync your Aepods with the app for added functionality',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                  SizedBox(height: 50,),
                  buildTransparentCard(context),
                  buildTransparentCard(context),
                  buildTransparentCard(context),
                ],
              ),
            ),
        ),
      ),
    );
  }

  Card buildTransparentCard(BuildContext context) {
    return Card(
      elevation: 0, // Remove card's elevation to make it flat
      color: Colors.transparent, // Set the card's color to transparent
      child: Container(
        height: 80,width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(16), // Adjust padding as needed
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.1), // Set the color of the content container
          borderRadius: BorderRadius.circular(8), // Adjust border radius as needed
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Upstairs pod',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ), Text("ID:1344567890", style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.normal,
                    color: Colors.white),)
              ],
            ),
            Row(
              children: [
                Text(
                  'Synced',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                SizedBox(width: 4,),
                Icon(Icons.check_circle_outline_outlined, color: Colors.white,)
              ],
            )
          ],
        )
        ,
      ),
    );
  }
}
