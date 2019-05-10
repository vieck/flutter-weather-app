import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class WeatherForecast extends StatefulWidget {
  @override
  WeatherForecastState createState() => WeatherForecastState();
}

class WeatherForecastState extends State<WeatherForecast> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(children: _getListData(), scrollDirection: Axis.horizontal),
    );
  }

  _getListData() {
    List forecastWidgets = <Widget>[];
    for (int i = 0; i < 5; i++) {
      forecastWidgets.add(Padding(
          padding: EdgeInsets.all(10.0),
          child: const Center(child: Text("Blue"))));
    }
    return forecastWidgets;
  }
}
