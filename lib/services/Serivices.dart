import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Services {
  static iconData(String iconData) {
    switch (iconData) {
      case 'sunny':
        return Icons.wb_sunny;
      // break;
      case 'snow':
        return FontAwesomeIcons.solidSnowflake;
      case 'Clouds':
        return FontAwesomeIcons.cloud;

      case 'Clear':
        return FontAwesomeIcons.cloudSun;
      case 'Rain':
        return FontAwesomeIcons.cloudRain;
      case 'Haze':
        return FontAwesomeIcons.cloudShowersHeavy-;
    }
    // return Icon(Icons.wb_sunny);
  }

  static backgroundColor(String iconData) {
    switch (iconData) {
      case 'sunny':
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.5,
            0.9,
            // 0.6,
            // 0.9,
          ],
          colors: [
            Colors.yellow.shade900,
            Colors.yellow.shade600,
            // Colors.indigo,
            // Colors.teal,
          ],
        );
      // break;
      case 'snow':
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.5,
            0.9,
            // 0.6,
            // 0.9,
          ],
          colors: [
            Colors.blue.shade800,
            Colors.blue.shade200,
            // Colors.indigo,
            // Colors.teal,
          ],
        );
      case 'Clouds':
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.5,
            0.9,
            // 0.6,
            // 0.9,
          ],
          colors: [
            Colors.red.shade500,
            Colors.red.shade200,
            // Colors.indigo,
            // Colors.teal,
          ],
        );

      case 'Clear':
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.5,
            0.9,
            // 0.6,
            // 0.9,
          ],
          colors: [
            Colors.yellow.shade800,
            Colors.yellow.shade600,
            // Colors.indigo,
            // Colors.teal,
          ],
        );
      case 'Rain':
        return LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [
            0.5,
            0.9,
            // 0.6,
            // 0.9,
          ],
          colors: [
            Colors.grey.shade800,
            Colors.grey.shade600,
            // Colors.indigo,
            // Colors.teal,
          ],
        );
    }
  }
}
