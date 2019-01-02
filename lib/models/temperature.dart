import 'package:json_annotation/json_annotation.dart';

part 'temperature.g.dart';
@JsonSerializable()
class Temperature {
  @JsonKey(name: 'temp')
  final double temperature;
  @JsonKey(name: 'temp_min')
  final double temperatureMin;
  @JsonKey(name: 'temp_max')
  final double temperatureMax;

  Temperature(this.temperature, this.temperatureMin, this.temperatureMax);

  factory Temperature.fromJson(Map<String, dynamic> json) => _$TemperatureFromJson(json);

  Map<String, dynamic> toJson() => _$TemperatureToJson(this);
}