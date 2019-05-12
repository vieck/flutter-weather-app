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
      json['weather'] == null
          ? null
          : Weather.fromJson(json['weather'] as Map<String, dynamic>));
}

Map<String, dynamic> _$ForecastToJson(Forecast instance) =>
    <String, dynamic>{'main': instance.main, 'weather': instance.weather};
