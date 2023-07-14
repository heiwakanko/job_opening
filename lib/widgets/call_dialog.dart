import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneAlert extends StatefulWidget {
  const PhoneAlert({Key? key}) : super(key: key);

  @override
  State<PhoneAlert> createState() => _PhoneAlertState();
}

class _PhoneAlertState extends State<PhoneAlert> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: const Text(
          'さあ、電話をかけましょう！',
          style: TextStyle(fontSize: 20.0),
        ),
        content: const Text(
          '貴方の新しい未来を切り拓いてください！\n受付時間: 9:00~17:00\n048-755-9302に電話をします',
          style: TextStyle(fontSize: 12.0),
        ),
        actions: [
          GestureDetector(
            child: const Text('いいえ   '),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          GestureDetector(
            child: const Text('はい   '),
            onTap: () {
              setState(() {
                _launchURL();
                Navigator.pop(context);
              });
            },
          )
        ]);
  }

  void _launchURL() {
    final tel = Uri.parse("tel:+81487559302");
    launchUrl(tel);
  }
}
