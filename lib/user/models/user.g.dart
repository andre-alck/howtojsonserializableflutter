// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      shoes: (json['shoes'] as List<dynamic>?)
          ?.map((e) => Shoes.fromJson(e as Map<String, dynamic>))
          .toList(),
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'shoes': instance.shoes,
    };
