import 'package:flutter/material.dart';

import 'CustomeText.dart';

class TempInfoWidget extends StatelessWidget {
  const TempInfoWidget({
    Key? key,
    required this.City,
    required this.Country,
    required this.Temperature,
    required this.description,
  }) : super(key: key);

  final String City;
  final String description;
  final String Country;
  final String Temperature;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              customeText(
                text: '$Temperature°',
                fontSize: 45,
                fontWeight: FontWeight.w800,
              ),
              Text(
                'C',
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          customeText(
            text: description,
            fontSize: 28,
          ),
          customeText(
            text: '${City},  $Country',
            fontSize: 30,
          )
        ],
      ),
    );
  }
}
