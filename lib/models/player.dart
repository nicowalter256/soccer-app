import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';

@JsonSerializable()
class Player {
  int? id;
  String? name;
  int? age;
  String? firstname;
  String? lastname;
  String? photo;
  String? height;
  Birth birth;

  Player({
    this.id,
    this.name,
    this.age,
    this.firstname,
    this.lastname,
    this.photo,
    this.height,
    required this.birth,
  });
  Map toJson() {
    return _$PlayerToJson(this);
  }

  factory Player.fromJson(Map<String, dynamic> json) {
    return _$PlayerFromJson(json);
  }
}

@JsonSerializable()
class Birth {
  String? date;
  String? place;
  String? country;

  Birth({
    this.date,
    this.place,
    this.country,
  });
  Map toJson() {
    return _$BirthToJson(this);
  }

  factory Birth.fromJson(Map<String, dynamic> json) {
    return _$BirthFromJson(json);
  }
}
