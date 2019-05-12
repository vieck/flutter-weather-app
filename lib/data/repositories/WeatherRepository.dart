import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/data/Secret.dart';
import 'package:weather_app/data/SecretLoader.dart';
import 'package:weather_app/data/models/forecast/ForecastResponse.dart';
import 'package:weather_app/data/models/weather/WeatherResponse.dart';

class WeatherRepository {
  String baseUrl = "https://api.openweathermap.org/data/2.5/";

  Future<WeatherResponse> getCurrentWeather(String location) async {
    var client = new http.Client();
    Future<Secret> secretLoader =
        SecretLoader(secretPath: "secrets.json").load();
    return secretLoader.then((secret) async {
      final response = await client.get(baseUrl +
          "weather?q=$location&units=imperial&appid=" +
          secret.weatherApiKey);
      if (response.statusCode == 200) {
        print("Weather " + response.body);
        return WeatherResponse.fromJson(json.decode(response.body));
      } else {
        throw Error();
      }
    });
  }

  Future<ForecastResponse> getForecast(String location) async {
    var client = new http.Client();
    Future<Secret> secretLoader =
        SecretLoader(secretPath: "secrets.json").load();
    return secretLoader.then((secret) async {
      final response = await client.get(baseUrl +
          "forecast?q=$location&cnt=5&units=imperial&appid=" +
          secret.weatherApiKey);
      if (response.statusCode == 200) {
        print("Forecast " + response.body);
        return ForecastResponse.fromJson(json.decode(response.body));
      } else {
        throw Error();
      }
    });
  }
}
