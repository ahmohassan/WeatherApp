import 'package:flutter/material.dart';

class WeatherIcon extends StatelessWidget {
  const WeatherIcon({
    Key? key,
    this.icon,
  }) : super(key: key);
  final IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Icon(
        icon,
        size: 230,
        color: Colors.white,
      ),
    );
  }
}
