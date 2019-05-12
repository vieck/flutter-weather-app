import 'package:flutter/material.dart';
import 'package:weather_app/ui/weather/WeatherPage.dart';

void main() => runApp(WeatherApp());

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white
        ),
      ),
      home: Scaffold(
         body: new WeatherPage()
      )
    );
  }
}