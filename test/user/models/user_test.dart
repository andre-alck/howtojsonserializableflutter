import 'package:test/test.dart';
import 'package:user_serializable/user/models/user.dart';

void main() {
  const String name = 'name';
  const int age = 99;

  group(
    'User',
    () {
      test(
        'Given information When user is created Then compare to Input',
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
        'Given JSON When user is created Then compare data between them',
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
    },
  );
}
