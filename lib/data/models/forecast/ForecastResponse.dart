import 'package:json_annotation/json_annotation.dart';
import 'package:weather_app/data/models/weather/Weather.dart';

part 'ForecastResponse.g.dart';

@JsonSerializable()
class ForecastResponse {

    @JsonKey(name: 'id')
    final int cityId;

    @JsonKey(name: 'name')
    final String cityName;

    final List<Weather> weather;

    ForecastResponse(this.cityId, this.cityName, this.weather);

    factory ForecastResponse.fromJson(Map<String, dynamic> json) => _$ForecastResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}