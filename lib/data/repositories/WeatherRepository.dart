import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/data/models/weather_response.dart';

class WeatherRepository {
  String baseUrl = "api.openweathermap.org/data/2.5/weather?q={city name}";

  Future<WeatherResponse> getCurrentWeather() async {
    var client = new http.Client();
    final response = await client.get(baseUrl);
    if (response.statusCode == 200) {
      return WeatherResponse.fromJson(json.decode(response.body));
    } else {
      throw Error();
    }
  }
}
