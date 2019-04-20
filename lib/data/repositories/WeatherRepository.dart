import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_response.dart';

class WeatherRepository {
  String baseUrl = "https://samples.openweathermap.org/data/2.5/";

  Future<WeatherResponse> getCurrentWeather() async {
    var client = new http.Client();
    final response = await client.get(baseUrl + "weather?q=Indianapolis");
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(json.decode(response.body));
    } else {
      throw Error();
    }
  }
}
