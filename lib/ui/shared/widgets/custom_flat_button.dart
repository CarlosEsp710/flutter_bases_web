import 'package:flutter/material.dart';

class CustomFlatButton extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPressed;

  const CustomFlatButton({
    Key? key,
    required this.title,
    required this.onPressed,
    this.color = Colors.pink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Text(title),
      onPressed: onPressed,
      style: TextButton.styleFrom(
        primary: color,
      ),
    );
  }
}
