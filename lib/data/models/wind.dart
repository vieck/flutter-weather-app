import 'package:json_annotation/json_annotation.dart';

part 'wind.g.dart';

@JsonSerializable()
class Wind {
    final double speed;

    @JsonKey(name: 'deg')
    final int direction;

    Wind(this.speed, this.direction);

    factory Wind.fromJson(Map<String, dynamic> json) => _$WindFromJson(json);

    Map<String, dynamic> toJson() => _$WindToJson(this);
}