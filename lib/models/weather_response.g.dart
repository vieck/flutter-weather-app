// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
      json['city'] == null
          ? null
          : City.fromJson(json['city'] as Map<String, dynamic>),
      (json['list'] as List)
          ?.map((e) => e == null
              ? null
              : ForecastData.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{'city': instance.city, 'list': instance.forecast};
