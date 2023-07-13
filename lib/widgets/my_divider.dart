import 'package:flutter/material.dart';

class MyDivider extends StatelessWidget {
  const MyDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 24.0,
      color: Colors.grey,
      indent: 12.0,
      endIndent: 12.0,
      thickness: 1.0,
    );
  }
}
