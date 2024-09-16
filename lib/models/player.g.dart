// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
