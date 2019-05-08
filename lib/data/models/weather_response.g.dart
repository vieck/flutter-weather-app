// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherResponse _$WeatherResponseFromJson(Map<String, dynamic> json) {
  return WeatherResponse(
      json['id'] as int,
      json['name'] as String,
      json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>),
      (json['main'] as List)
          ?.map((e) =>
              e == null ? null : Main.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      json['wind'] == null
          ? null
          : Wind.fromJson(json['wind'] as Map<String, dynamic>));
}

Map<String, dynamic> _$WeatherResponseToJson(WeatherResponse instance) =>
    <String, dynamic>{
      'id': instance.cityId,
      'name': instance.cityName,
      'weather': instance.weather,
      'main': instance.main,
      'wind': instance.wind
    };
