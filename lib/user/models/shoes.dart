import 'package:json_annotation/json_annotation.dart';

part 'shoes.g.dart';

@JsonSerializable()
class Shoes {
  String color;
  double price;
  int size;

  Shoes(
    this.color,
    this.price,
    this.size,
  );

  factory Shoes.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$ShoesFromJson(
        json,
      );

  Map<String, dynamic> toJson() => _$ShoesToJson(
        this,
      );
}
