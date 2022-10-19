import 'package:json_annotation/json_annotation.dart';

import 'shoes.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  String name;
  int age;
  Shoes? shoes;

  User({
    this.shoes,
    required this.name,
    required this.age,
  });

  factory User.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$UserFromJson(
        json,
      );

  Map<String, dynamic> toJson() => _$UserToJson(
        this,
      );
}
