import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String buttonText;
  final bool? isPrimary;
  final VoidCallback callback;
  final Color? backgroundColor;
  final Color textColor;

  const AppButton(
      {super.key,
      required this.buttonText,
      required this.callback, this.backgroundColor,
      required this.textColor, this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: isPrimary ?? false ? backgroundColor : Colors.transparent,
            border: Border.all(
                color: Colors.white,
                width: isPrimary ?? false ? 0 : 2),
        ),
        width: MediaQuery.of(context).size.width,
        child: TextButton(
            onPressed: callback,
            child: Text(buttonText,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: textColor))));
  }
}
