import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
   const BottomButton({super.key, required this.onTap, required this.name});

  final VoidCallback onTap;
  final String name;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0,
        ),
      ),
    );
  }
}