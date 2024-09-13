import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';

@JsonSerializable()
class Player {
  int? id;
  String? name;
  int? age;

  Player({
    this.id,
    this.name,
    this.age,
  });
  Map toJson() {
    return _$PlayerToJson(this);
  }

  factory Player.fromJson(Map<String, dynamic> json) {
    return _$PlayerFromJson(json);
  }
}
