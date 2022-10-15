import 'package:test/test.dart';
import 'package:user_serializable/user/models/user.dart';

void main() {
  test(
    'Given information When user is created Then compare to Input',
    () {
      final user = User(
        'name',
        99,
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
        "name": 'name',
        "age": 99,
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
}
