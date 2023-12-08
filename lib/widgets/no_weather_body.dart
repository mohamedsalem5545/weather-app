import 'package:flutter/material.dart';
import 'package:weather_app/models/weather_model.dart';

class NoWeatherBody extends StatelessWidget {
  NoWeatherBody({
    Key? key,
  }) : super(key: key);

  WeatherModel? weatherData;

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'there is no weather 😔 start',
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          Text(
            'searching now 🔍',
            style: TextStyle(
              fontSize: 30,
            ),
          )
        ],
      ),
    );
  }
}
