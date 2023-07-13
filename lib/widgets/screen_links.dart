import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenLinks extends StatefulWidget {
  const ScreenLinks({super.key});

  @override
  State<ScreenLinks> createState() => _ScreenLinksState();
}

class _ScreenLinksState extends State<ScreenLinks> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 0.0,
        bottom: 8.0,
        left: 0.0,
        right: 0.0,
      ),
      child: ElevatedButton(
        onPressed: () {
          setState(() {
            _companyScreenLinks();
          });
        },
        child: const Text("株式会社 平和観光 公式メインサイトはこちら"),
      ),
    );
  }

  void _companyScreenLinks() {
    final url = Uri.parse("https://www.heiwa-kanko.com/");
    launchUrl(url);
  }
}
