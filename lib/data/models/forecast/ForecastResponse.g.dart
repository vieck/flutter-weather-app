// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ForecastResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return ForecastResponse(
      json['id'] as int,
      json['name'] as String,
      (json['weather'] as List)
          ?.map((e) =>
              e == null ? null : Weather.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{
      'id': instance.cityId,
      'name': instance.cityName,
      'weather': instance.weather
    };
