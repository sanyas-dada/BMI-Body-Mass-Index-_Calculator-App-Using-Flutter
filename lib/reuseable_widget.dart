import 'package:flutter/material.dart';

class ReusableWidget extends StatelessWidget {
  const ReusableWidget({super.key, required this.colour, required this.childWidget, required this.onPressed});

  final Color colour;
  final Widget childWidget;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onPressed,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            color: colour, borderRadius: BorderRadius.circular(10)),
        child: childWidget,
      ),
    );
  }
}
