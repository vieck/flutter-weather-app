import 'package:flutter/material.dart';
import 'package:weather_app/data/models/forecast/Forecast.dart';
import 'package:weather_app/data/models/forecast/ForecastResponse.dart';
import 'package:weather_app/data/repositories/WeatherRepository.dart';

class WeatherForecast extends StatefulWidget {
  @override
  WeatherForecastState createState() => WeatherForecastState();
}

class WeatherForecastState extends State<WeatherForecast> {
  var _forecastResponse = getForecastData();

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.bottomCenter,
        child: FutureBuilder(
          future: _forecastResponse,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Container(
                  margin: EdgeInsets.only(bottom: 12.0),
                  child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: _getForecastWidgets(snapshot.data)));
            } else {
              return const Text("Unable to load forecast data");
            }
          },
        ));
  }

  List<Widget> _getForecastWidgets(ForecastResponse forecastResponse) {
    List forecastWidgets = <Widget>[];
    print("Forecast Mapped" + forecastResponse.toJson().toString());
    for (int i = 0; i < 5; i++) {
      Forecast forecast = forecastResponse.forecast[i];
      forecastWidgets
          .add(Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
        Center(child: Text("Day " + i.toString())),
        Image(
            image: NetworkImage(
                "http://chittagongit.com/images/weather-sun-icon/weather-sun-icon-4.jpg"),
            width: 25.0,
            height: 25.0),
        Center(
            child: Text(
          forecast.main.maxTemperature.round().toString() +
              "°" +
              "/" +
              forecast.main.minTemperature.round().toString() +
              "°",
          style: TextStyle(fontSize: 12.0),
        ))
      ]));
    }
    return forecastWidgets;
  }
}

Future<ForecastResponse> getForecastData() {
  var repository = new WeatherRepository();
  return repository.getForecast('Indianapolis');
}
