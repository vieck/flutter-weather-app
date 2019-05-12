import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/models/weather/Weather.dart';

import '../main.dart';

part 'Forecast.g.dart';

@JsonSerializable()
class Forecast {

    @JsonKey(name: 'main')
    final Main main;

    @JsonKey(name: 'weather')
    final Weather weather;

    Forecast(this.main, this.weather);

    factory Forecast.fromJson(Map<String, dynamic> json) => _$ForecastFromJson(json);

    Map<String, dynamic> toJson() => _$ForecastToJson(this);
}