// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'temperature.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Temperature _$TemperatureFromJson(Map<String, dynamic> json) {
  return Temperature(
      (json['temp'] as num)?.toDouble(),
      (json['temp_min'] as num)?.toDouble(),
      (json['temp_max'] as num)?.toDouble());
}

Map<String, dynamic> _$TemperatureToJson(Temperature instance) =>
    <String, dynamic>{
      'temp': instance.temperature,
      'temp_min': instance.temperatureMin,
      'temp_max': instance.temperatureMax
    };
