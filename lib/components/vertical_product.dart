import 'package:flutter/material.dart';

class VerticalProduct extends StatelessWidget {
  const VerticalProduct({
    super.key,
    required this.title,
    required this.onPress,
  });

  final String? title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Stack(
        fit: StackFit.passthrough,
        alignment: Alignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: const BoxDecoration(color: Colors.blueAccent),
            child: Center(
                child: Text(
              title.toString(),
              style: const TextStyle(
                fontSize: 18,
              ),
            )),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: InkWell(
                onTap: onPress,
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_cart),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
