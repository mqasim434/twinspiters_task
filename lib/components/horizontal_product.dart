import 'package:flutter/material.dart';

class HorizontalProduct extends StatelessWidget {
  const HorizontalProduct({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        width: 150,
        decoration: const BoxDecoration(color: Colors.blueAccent),
        child: Center(
            child: Text(
              title.toString(),
          style: const TextStyle(
            fontSize: 18,
          ),
        )),
      ),
    );
  }
}
