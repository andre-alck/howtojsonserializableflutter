// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) => User(
      shoes: json['shoes'] == null
          ? null
          : Shoes.fromJson(json['shoes'] as Map<String, dynamic>),
      name: json['name'] as String,
      age: json['age'] as int,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'name': instance.name,
      'age': instance.age,
      'shoes': instance.shoes,
    };
