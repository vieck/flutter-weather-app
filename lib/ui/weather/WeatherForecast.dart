import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/data/models/forecast/ForecastResponse.dart';
import 'package:weather_app/data/repositories/WeatherRepository.dart';

class WeatherForecast extends StatefulWidget {
  @override
  WeatherForecastState createState() => WeatherForecastState();
}

class WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: _getForecastWidgets()
      )
    );
  }

  _getForecastWidgets() {
    List forecastWidgets = <Widget>[];
    for (int i = 0; i < 5; i++) {
      forecastWidgets.add(Column(
        children: <Widget>[
          Center(child: Text("Day " + i.toString())),
          Image(image: NetworkImage("http://chittagongit.com/images/weather-sun-icon/weather-sun-icon-4.jpg"), width: 25.0, height: 25.0),
          const Center(child: Text("55°"))
        ]));
    }
    return forecastWidgets;
  }
}

Future<ForecastResponse> getWeatherData() {
  var repository = new WeatherRepository();
  return repository.getForecast('Indianapolis');
}

