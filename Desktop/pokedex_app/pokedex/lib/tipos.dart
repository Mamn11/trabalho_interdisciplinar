import 'package:flutter/material.dart';

Color getTypeColor(String tipos) {
  switch (tipos) {
    case 'Normal':
      return Color.fromRGBO(168, 167, 122, 1);
    case 'Fighting':
      return Color.fromRGBO(194, 46, 40, 1);
    case 'Flying':
      return Color.fromRGBO(169, 143, 243, 1);
    case 'Poison':
      return Color.fromRGBO(163, 62, 161, 1);
    case 'Ground':
      return Color.fromRGBO(226, 191, 101, 1);
    case 'Rock':
      return Color.fromRGBO(182, 161, 54, 1);
    case 'Bug':
      return Color.fromRGBO(166, 185, 26, 1);
    case 'Ghost':
      return Color.fromRGBO(115, 87, 151, 1);
    case 'Steel':
      return Color.fromRGBO(183, 183, 206, 1);
    case 'Fire':
      return Color.fromRGBO(238, 129, 48, 1);
    case 'Water':
      return Color.fromRGBO(99, 144, 240, 1);
    case 'Grass':
      return Color.fromRGBO(122, 199, 76, 1);
    case 'Electric':
      return Color.fromRGBO(247, 208, 44, 1);
    case 'Psychic':
      return Color.fromRGBO(249, 85, 135, 1);
    case 'Ice':
      return Color.fromRGBO(150, 217, 214, 1);
    case 'Dragon':
      return Color.fromRGBO(111, 53, 252, 1);
    case 'Dark':
      return Color.fromRGBO(112, 87, 70, 1);
    case 'Fairy':
      return Color.fromRGBO(214, 133, 173, 1);
    default:
      return Colors.black;
  }
}
