import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/models/temperature.dart';
import 'package:weather_app/models/weather.dart';

part 'forecast_data.g.dart';

@JsonSerializable()
class ForecastData {
    @JsonKey(name: 'dt')
    final DateTime dateTime;
    @JsonKey(name: 'main')
    final Temperature temperature;
    @JsonKey(name: 'weather')
    final Weather weather;

    ForecastData(this.dateTime, this.temperature, this.weather);

    factory ForecastData.fromJson(Map<String, dynamic> json) => _$ForecastDataFromJson(json);

    Map<String, dynamic> toJson() => _$ForecastDataToJson(this);
}