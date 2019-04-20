// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forecast_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastData _$ForecastDataFromJson(Map<String, dynamic> json) {
  return ForecastData(
      json['dt'] == null ? null : DateTime.parse(json['dt'] as String),
      json['main'] == null
          ? null
          : Temperature.fromJson(json['main'] as Map<String, dynamic>),
      json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ForecastDataToJson(ForecastData instance) =>
    <String, dynamic>{
      'dt': instance.dateTime?.toIso8601String(),
      'main': instance.temperature,
      'weather': instance.weather
    };
