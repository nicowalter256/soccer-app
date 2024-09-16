import 'package:json_annotation/json_annotation.dart';
part 'player.g.dart';

@JsonSerializable()
class Players {
  Player player;
  List<Statistics> statistics;

  Players({
    required this.player,
    required this.statistics,
  });
  Map toJson() {
    return _$PlayersToJson(this);
  }

  factory Players.fromJson(Map<String, dynamic> json) {
    return _$PlayersFromJson(json);
  }
}

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

@JsonSerializable()
class Statistics {
  Team team;
  League league;

  Statistics({
    required this.team,
    required this.league,
  });
  Map toJson() {
    return _$StatisticsToJson(this);
  }

  factory Statistics.fromJson(Map<String, dynamic> json) {
    return _$StatisticsFromJson(json);
  }
}

@JsonSerializable()
class Team {
  String? name;
  int id;
  String? logo;

  Team({
    this.name,
    required this.id,
    this.logo,
  });
  Map toJson() {
    return _$TeamToJson(this);
  }

  factory Team.fromJson(Map<String, dynamic> json) {
    return _$TeamFromJson(json);
  }
}

@JsonSerializable()
class League {
  String? name;
  int id;
  String? country;

  League({
    this.name,
    required this.id,
    this.country,
  });
  Map toJson() {
    return _$LeagueToJson(this);
  }

  factory League.fromJson(Map<String, dynamic> json) {
    return _$LeagueFromJson(json);
  }
}
