import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/data/models/weather_response.dart';
import 'package:weather_app/data/repositories/WeatherRepository.dart';

class WeatherPage extends StatefulWidget {
  @override
  _WeatherPageState createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
  var _weatherResponse = getWeatherData();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather"),
      ),
      body: Center(
        child: FutureBuilder(
          future: _weatherResponse,
          builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Text(snapshot.data.city.name);
              } else {
                return Text("${snapshot.error}");
              }
          },
        ),
      ),
    );
  }
}

Future<WeatherResponse> getWeatherData() {
  var repository = new WeatherRepository();
  return repository.getCurrentWeather();
}


