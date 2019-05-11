import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/data/models/weather_response.dart';
import 'package:weather_app/data/repositories/WeatherRepository.dart';

import 'WeatherForecast.dart';

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
        body: Container(
          //TODO: Add horizontal list of 5 day forecast below this column
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: FutureBuilder<WeatherResponse>(
                    future: _weatherResponse,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data.cityName,
                          style: TextStyle(fontSize: 34),
                        );
                      } else {
                        return Text("${snapshot.error}");
                      }
                    },
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 40.0),
                  child: FutureBuilder<WeatherResponse>(
                    future: _weatherResponse,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data.main.temperature.round().toString() +
                              "°",
                          style: TextStyle(fontSize: 48),
                        );
                      } else {
                        return Text("${snapshot.error}");
                      }
                    },
                  ),
                ),
                Container(
                  child: FutureBuilder<WeatherResponse>(
                    future: _weatherResponse,
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return Text(
                          snapshot.data.weather.single.name,
                          style: TextStyle(fontSize: 32),
                        );
                      } else {
                        return Text("${snapshot.error}");
                      }
                    },
                  ),
                ),
                Expanded(child: new WeatherForecast())
              ],
            ),
          ),
        ));
  }
}

Future<WeatherResponse> getWeatherData() {
  var repository = new WeatherRepository();
  return repository.getCurrentWeather();
}
