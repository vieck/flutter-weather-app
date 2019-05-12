// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Weather _$WeatherFromJson(Map<String, dynamic> json) {
  return Weather(json['id'] as int, json['main'] as String,
      json['description'] as String, json['icon'] as String);
}

Map<String, dynamic> _$WeatherToJson(Weather instance) => <String, dynamic>{
      'id': instance.id,
      'main': instance.name,
      'description': instance.description,
      'icon': instance.iconId
    };
