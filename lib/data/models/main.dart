import 'package:json_annotation/json_annotation.dart';

part 'main.g.dart';

@JsonSerializable()
class Main {
    @JsonKey(name: 'temp')
    final double temperature;

    final double humidity;

    @JsonKey(name: 'temp_min')
    final double minTemperature;

    @JsonKey(name: 'temp_max')
    final double maxTemperature;

    Main(this.temperature, this.humidity, this.minTemperature, this.maxTemperature);

    factory Main.fromJson(Map<String, dynamic> json) => _$MainFromJson(json);

    Map<String, dynamic> toJson() => _$MainToJson(this);
}