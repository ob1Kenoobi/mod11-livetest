import 'package:flutter/material.dart';
import 'package:mod11_livetest/weather.dart';

class WeatherDisplay extends StatelessWidget {
  final List<Weather> weatherData;

  WeatherDisplay({required this.weatherData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather Information'),
      ),
      body: ListView.builder(
        itemCount: weatherData.length,
        itemBuilder: (context, index) {
          Weather weather = weatherData[index];
          return ListTile(
            title: Text('City: ${weather.city}'),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Temperature: ${weather.temperature}°C'),
                Text('Condition: ${weather.condition}'),
                Text('Humidity: ${weather.humidity}%'),
                Text('Wind Speed: ${weather.windSpeed} km/h'),
              ],
            ),
          );
        },
      ),
    );
  }
}
