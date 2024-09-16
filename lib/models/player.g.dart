// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Player _$PlayerFromJson(Map<String, dynamic> json) => Player(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      age: (json['age'] as num?)?.toInt(),
    );

Map<String, dynamic> _$PlayerToJson(Player instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'age': instance.age,
    };
