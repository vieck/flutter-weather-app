// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ForecastResponse.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ForecastResponse _$ForecastResponseFromJson(Map<String, dynamic> json) {
  return ForecastResponse((json['list'] as List)
      ?.map((e) =>
          e == null ? null : Forecast.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$ForecastResponseToJson(ForecastResponse instance) =>
    <String, dynamic>{'list': instance.forecast};
