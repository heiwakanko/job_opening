import 'package:flutter/material.dart';
import 'package:icon_decoration/icon_decoration.dart';

class ListDecolated extends StatelessWidget {
  final IconData? prIcon;
  final String? prLine;
  final String? prSubLine;
  final Color starColor1;
  final Color starColor2;
  final Color starColor3;
  final Color starColor4;
  final Color starColor5;
  final Color borderColor;
  final double borderWidth;

  const ListDecolated({
    Key? key,
    required this.prIcon,
    required this.prLine,
    required this.prSubLine,
    required this.starColor1,
    required this.starColor2,
    required this.starColor3,
    required this.starColor4,
    required this.starColor5,
    required this.borderColor,
    required this.borderWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        prIcon,
        color: Colors.red[900],
      ),
      title: Text(
        prLine!,
        style: const TextStyle(
          fontSize: 15.0,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        prSubLine!,
        style: const TextStyle(fontSize: 12.0),
      ),
      trailing: Wrap(
        spacing: 1.0,
        children: [
          DecoratedIcon(
            icon: Icon(
              Icons.star_rate,
              color: starColor1,
            ),
            decoration: IconDecoration(
              border: IconBorder(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.star_rate,
              color: starColor2,
            ),
            decoration: IconDecoration(
              border: IconBorder(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.star_rate,
              color: starColor3,
            ),
            decoration: IconDecoration(
              border: IconBorder(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.star_rate,
              color: starColor4,
            ),
            decoration: IconDecoration(
              border: IconBorder(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
          DecoratedIcon(
            icon: Icon(
              Icons.star_rate,
              color: starColor5,
            ),
            decoration: IconDecoration(
              border: IconBorder(
                color: borderColor,
                width: borderWidth,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
