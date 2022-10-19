// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shoes.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Shoes _$ShoesFromJson(Map<String, dynamic> json) => Shoes(
      json['color'] as String,
      (json['price'] as num).toDouble(),
      json['size'] as int,
    );

Map<String, dynamic> _$ShoesToJson(Shoes instance) => <String, dynamic>{
      'color': instance.color,
      'price': instance.price,
      'size': instance.size,
    };
