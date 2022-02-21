import 'package:flutter/material.dart';

import '../widgets/Widgets.dart';

class Bodydata extends StatelessWidget {
  const Bodydata({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Searchbar(),
        customeText(
          text: 'Sturdy',
          fontSize: 18,
        ),
        customeText(
          text: '06:00',
          fontSize: 48,
          fontWeight: FontWeight.w800,
        ),
        SizedBox(
          height: 60,
        ),
        WeatherIcon(),
        SizedBox(
          height: 110,
        ),
        // TempInfoWidget(),
      ],
    );
  }
}
