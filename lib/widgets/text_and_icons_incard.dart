import "package:flutter/material.dart";

class TextAndIconsInCard extends StatelessWidget {
  final List<TextSpan?> lines;
  final String screen;

  const TextAndIconsInCard({
    super.key,
    required this.lines,
    required this.screen,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor =
        screen == 'anti_gangsta_screen' ? Colors.red[900]! : Colors.teal[900]!;
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: lines.asMap().entries.map((entry) {
          int idx = entry.key;
          TextSpan? line = entry.value;
          return Column(
            children: [
              if (idx < 2 || idx == lines.length - 1)
                Center(
                  child: line != null ? RichText(text: line) : Container(),
                ),
              if (idx >= 2 && idx != lines.length - 1)
                Column(
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.done,
                          color: iconColor,
                        ),
                        const SizedBox(width: 8.0),
                        Expanded(
                            child: line != null
                                ? RichText(text: line)
                                : Container()),
                      ],
                    ),
                    const SizedBox(height: 4.0),
                  ],
                ),
              if (idx == 0 || idx == 1 || idx == lines.length - 2)
                const SizedBox(height: 8.0),
              if (idx == 0 || idx >= 2 && idx != lines.length - 1)
                const SizedBox(height: 4.0),
            ],
          );
        }).toList(),
      ),
    );
  }
}
