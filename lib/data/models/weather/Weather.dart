import 'package:json_annotation/json_annotation.dart';

part 'Weather.g.dart';

@JsonSerializable()
class Weather {
  final int id;
  @JsonKey(name: 'main')
  final String name;
  final String description;
  @JsonKey(name: 'icon')
  final String iconId;

  Weather(this.id, this.name, this.description, this.iconId);

  factory Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherToJson(this);
}