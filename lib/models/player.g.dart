// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Players _$PlayersFromJson(Map<String, dynamic> json) => Players(
      player: Player.fromJson(json['player'] as Map<String, dynamic>),
      statistics: (json['statistics'] as List<dynamic>)
          .map((e) => Statistics.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PlayersToJson(Players instance) => <String, dynamic>{
      'player': instance.player,
      'statistics': instance.statistics,
    };

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      age: (json['age'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      photo: json['photo'] as String?,
      height: json['height'] as String?,
      birth: Birth.fromJson(json['birth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'age': instance.age,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'photo': instance.photo,
      'height': instance.height,
      'birth': instance.birth,
    };

Birth _$BirthFromJson(Map<String, dynamic> json) => Birth(
      date: json['date'] as String?,
      place: json['place'] as String?,
      country: json['country'] as String?,
    );

Map<String, dynamic> _$BirthToJson(Birth instance) => <String, dynamic>{
      'date': instance.date,
      'place': instance.place,
      'country': instance.country,
    };

Statistics _$StatisticsFromJson(Map<String, dynamic> json) => Statistics(
      team: Team.fromJson(json['team'] as Map<String, dynamic>),
      league: League.fromJson(json['league'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$StatisticsToJson(Statistics instance) =>
    <String, dynamic>{
      'team': instance.team,
      'league': instance.league,
    };

Team _$TeamFromJson(Map<String, dynamic> json) => Team(
      name: json['name'] as String?,
      id: (json['id'] as num).toInt(),
      logo: json['logo'] as String?,
    );

Map<String, dynamic> _$TeamToJson(Team instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'logo': instance.logo,
    };

League _$LeagueFromJson(Map<String, dynamic> json) => League(
      name: json['name'] as String?,
      id: (json['id'] as num).toInt(),
      country: json['country'] as String?,
    );

Map<String, dynamic> _$LeagueToJson(League instance) => <String, dynamic>{
      'name': instance.name,
      'id': instance.id,
      'country': instance.country,
    };
