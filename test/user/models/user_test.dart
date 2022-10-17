import 'package:test/test.dart';
import 'package:user_serializable/user/models/user.dart';

void main() {
  const String name = 'name';
  const int age = 99;
  const String bar = 'bar';

  group(
    'User',
    () {
      test(
        'Given default constructor When user is created Then check data',
        () {
          final user = User(
            name,
            age,
          );

          expect(
            user.name,
            'name',
          );
          expect(
            user.age,
            99,
          );
        },
      );

      test(
        'Given fromJson constructor When user is created Then check data',
        () {
          Map<String, dynamic> json = {
            "name": name,
            "age": age,
          };

          final user = User.fromJson(
            json,
          );

          expect(
            user.name,
            'name',
          );
          expect(
            user.age,
            99,
          );
        },
      );

      test(
        'Given overcomplete JSON When user is created by fromJson Then check data',
        () {
          Map<String, dynamic> json = {
            "name": name,
            "age": age,
            "foo": bar,
          };

          final user = User.fromJson(
            json,
          );

          expect(
            user.name,
            'name',
          );
          expect(
            user.age,
            99,
          );
        },
      );
    },
  );
}
