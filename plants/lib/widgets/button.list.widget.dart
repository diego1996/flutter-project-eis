import 'package:flutter/material.dart';

class ButtonPlant extends StatelessWidget {
  final String icon;
  final String title;
  final Color color;
  final dynamic method;

  const ButtonPlant(
      {Key? key,
      required this.title,
      required this.icon,
      required this.color,
      required this.method})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(0),
        child: MaterialButton(
          color: color,
          onPressed: method,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                icon,
                width: 120,
                fit: BoxFit.cover,
              ),
              Text("\n$title", style: const TextStyle(color: Colors.white70))
            ],
          ),
        ),
      ),
    );
  }
}
