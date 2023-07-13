import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; //SNSのアイコン

class ShareButtons extends StatelessWidget {
  final String url;
  final String text;

  const ShareButtons({super.key, required this.url, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.facebookF,
            color: Color(0xFF1877F2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          onPressed: () async {
            // Facebook
            final facebookUrl =
                Uri.parse("https://www.facebook.com/sharer/sharer.php?u=$url");
            if (await canLaunchUrl(facebookUrl)) {
              await launchUrl(facebookUrl);
            }
          },
        ),
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.twitter,
            color: Color(0xFF1DA1F2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          onPressed: () async {
            // Twitter
            final twitterUrl = Uri.parse(
                "https://twitter.com/intent/tweet?text=$text&url=$url");
            if (await canLaunchUrl(twitterUrl)) {
              await launchUrl(twitterUrl);
            }
          },
        ),
        IconButton(
          icon: const FaIcon(
            FontAwesomeIcons.line,
            color: Color(0xFF00C300),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          onPressed: () async {
            // LINE
            final lineUrl = Uri.parse('https://line.me/R/msg/text/?$text $url');
            if (await canLaunchUrl(lineUrl)) {
              await launchUrl(lineUrl);
            }
          },
        ),
        IconButton(
          icon: const FaIcon(FontAwesomeIcons.envelope,
              color: Colors.red), // Gmail's brand color
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          onPressed: () async {
            // Gmail
            final emailUrl = Uri.parse('mailto:?subject=$text&body=$url');
            if (await canLaunchUrl(emailUrl)) {
              await launchUrl(emailUrl);
            }
          },
        ),

        // Add other social media share buttons similarly
      ],
    );
  }
}
