import 'package:json_annotation/json_annotation.dart';


import 'Forecast.dart';

part 'ForecastResponse.g.dart';

@JsonSerializable()
class ForecastResponse {

    @JsonKey(name: 'list')
    final List<Forecast> forecast;

    ForecastResponse(this.forecast);

    factory ForecastResponse.fromJson(Map<String, dynamic> json) => _$ForecastResponseFromJson(json);

    Map<String, dynamic> toJson() => _$ForecastResponseToJson(this);
}