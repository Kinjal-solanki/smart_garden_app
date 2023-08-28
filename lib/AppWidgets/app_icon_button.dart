import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  final String buttonText;
  final String? icon;
  final bool? isPrimary;
  final VoidCallback callback;
  final Color backgroundColor;
  final Color textColor;

  const AppIconButton({super.key, required this.buttonText, this.icon, required this.callback, required this.backgroundColor, required this.textColor, this.isPrimary});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: isPrimary ?? false ? backgroundColor : Colors.transparent,
            borderRadius: BorderRadius.all(Radius.circular(16)),
            border: Border.all(
                color: Colors.white,
                width: isPrimary ?? false ? 0 : 2)
        ),
        width: MediaQuery.of(context).size.width,
        child: TextButton.icon(
          icon: Image(image: AssetImage(icon ?? ""),),
            onPressed: callback,
            label: Text(buttonText,
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: textColor))));
  }
}
