import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/models/main.dart';
import 'package:weather_app/data/models/weather.dart';
import 'package:weather_app/data/models/wind.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {

  @JsonKey(name: 'id')
  final int cityId;

  @JsonKey(name: 'name')
  final String cityName;

  final Weather weather;

  @JsonKey(name: 'main')
  final List<Main> main;

  final Wind wind;

  WeatherResponse(this.cityId, this.cityName, this.weather, this.main, this.wind);

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}