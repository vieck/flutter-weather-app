// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Main _$MainFromJson(Map<String, dynamic> json) {
  return Main(
      (json['temp'] as num)?.toDouble(),
      (json['humidity'] as num)?.toDouble(),
      (json['temp_min'] as num)?.toDouble(),
      (json['temp_max'] as num)?.toDouble());
}

Map<String, dynamic> _$MainToJson(Main instance) => <String, dynamic>{
      'temp': instance.temperature,
      'humidity': instance.humidity,
      'temp_min': instance.minTemperature,
      'temp_max': instance.maxTemperature
    };
