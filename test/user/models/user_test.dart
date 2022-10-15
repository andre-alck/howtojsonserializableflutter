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
}
