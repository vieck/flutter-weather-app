import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/city.dart';
import 'package:weather_app/models/forecast_data.dart';

part 'weather_response.g.dart';

@JsonSerializable()
class WeatherResponse {
  final City city;
  @JsonKey(name: 'list')
  final List<ForecastData> forecast;

  WeatherResponse(this.city, this.forecast);

  factory WeatherResponse.fromJson(Map<String, dynamic> json) => _$WeatherResponseFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherResponseToJson(this);
}