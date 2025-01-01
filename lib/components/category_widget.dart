import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget({super.key, required this.text, required this.onTap, required this.color});
  final String text;
  final Color color;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: GestureDetector(
          onTap: onTap,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              color: color,
            child: Center(
              child: Text(
                text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
