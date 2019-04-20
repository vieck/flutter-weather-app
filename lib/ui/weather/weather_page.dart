import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/data/models/weather_response.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  WeatherResponse _weatherResponse;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Center(
        child: Text("Weather data"),
      ),
    );
  }
}

void getWeatherData() {

}


