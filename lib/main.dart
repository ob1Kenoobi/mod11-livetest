import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';

import 'package:mod11_livetest/weather.dart';
import 'package:mod11_livetest/weather_display.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Load and parse the JSON data
  String jsonData = await rootBundle.loadString('assets/weather_data.json');
  List<dynamic> jsonList = json.decode(jsonData);
  List<Weather> weatherData = jsonList.map((json) => Weather.fromJson(json)).toList();

  runApp(
    MaterialApp(
      home: WeatherDisplay(weatherData: weatherData),
    ),
  );
}


