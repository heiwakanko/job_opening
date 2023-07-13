import 'package:flutter/material.dart';

class MyOpacityRogoK extends StatelessWidget {
  const MyOpacityRogoK({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Opacity(
        opacity: 0.2,
        child: Image.asset(
          "assets/images/logo_k_navy.png",
          width: 80,
          height: 80,
        ),
      ),
    );
  }
}
