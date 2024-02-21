import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  final double? height;

  const MyButton({
    Key? key,
    required this.onTap,
    required this.buttonText,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: height ?? 55, // Use the provided height or default to 55
        margin: const EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 5.0),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.black,
            backgroundColor: Colors.orange[300], // Background color
            side: BorderSide(color: Colors.black), // Border color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(50),
            ),
          ),
          onPressed: onTap,
          child: Text(
            buttonText,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'Poppins',
              color: Colors.black, // Text color
            ),
          ),
        ),
      ),
    );
  }
}