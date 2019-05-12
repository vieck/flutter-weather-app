// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Forecast.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Forecast _$ForecastFromJson(Map<String, dynamic> json) {
  return Forecast(
      json['main'] == null
          ? null
          : Main.fromJson(json['main'] as Map<String, dynamic>),
      (json['weather'] as List)
          ?.map((e) =>
              e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) =>
    <String, dynamic>{'main': instance.main, 'weather': instance.weather};
