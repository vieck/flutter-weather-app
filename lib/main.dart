import 'package:flutter/material.dart';
import 'package:weather_app/ui/weather/weather_page.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
         body: new WeatherPage()
      )
    );
  }
}