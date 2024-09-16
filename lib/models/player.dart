import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';

@JsonSerializable()
class Player {
  int? id;
  String? name;
  int? age;
  String? firstname;
  String? lastname;

  Player({
    this.id,
    this.name,
    this.age,
    this.firstname,
    this.lastname,
  });
  Map toJson() {
    return _$PlayerToJson(this);
  }

  factory Player.fromJson(Map<String, dynamic> json) {
    return _$PlayerFromJson(json);
  }
}
