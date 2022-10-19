import 'dart:convert';

import 'package:test/test.dart';
import 'package:user_serializable/user/models/user.dart';

void main() {
  group(
    'All tests',
    () {
      group(
        'User',
        () {
          test(
            'Given required data When user is created Then check user',
            () {
              const String name = 'name';
              const int age = 99;

              final user = User(
                name: name,
                age: age,
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

          group(
            'JSON',
            () {
              test(
                'Given required data as map When user is created by fromJson Then check user',
                () {
                  Map<String, dynamic> json = {
                    "name": "name",
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

              test(
                'Given overcomplete data as map When user is created by fromJson Then check user',
                () {
                  Map<String, dynamic> json = {
                    "name": "name",
                    "age": 99,
                    "foo": "bar",
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

          group(
            'String',
            () {
              test(
                'Given required data as String When user is created by fromJson Then check user',
                () {
                  String data = '{"name":"name", "age":99}';

                  final user = User.fromJson(
                    json.decode(
                      data,
                    ),
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
                'Given overcomplete data as String When user is created by fromJson Then check user',
                () {
                  String data = '{"name":"name", "age":99, "foo":"bar"}';

                  final user = User.fromJson(
                    json.decode(
                      data,
                    ),
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
        },
      );

      group(
        'User and Shoes',
        () {
          test(
            'Given required data (including shoes) as map When user is created by fromJson Then check user',
            () {
              Map<String, dynamic> json = {
                "name": "name",
                "age": 99,
                "shoes": [
                  {
                    "color": "blue",
                    "size": 40,
                    "price": 100.0,
                  }
                ],
              };

              final user = User.fromJson(
                json,
              );
              expect(
                user.name,
                "name",
              );
              expect(
                user.age,
                99,
              );

              expect(
                user.shoes?[0].color,
                "blue",
              );
              expect(
                user.shoes?[0].size,
                40,
              );
              expect(
                user.shoes?[0].price,
                100.0,
              );
            },
          );

          test(
            'Given required data (including shoes) as string When user is created by fromJson Then check user',
            () {
              String data =
                  '{"name": "name","age": 99,"shoes": [{"color": "blue","size": 40,"price": 100.0}]}';

              final user = User.fromJson(
                json.decode(
                  data,
                ),
              );

              expect(
                user.name,
                "name",
              );
              expect(
                user.age,
                99,
              );
              expect(
                user.shoes?[0].color,
                "blue",
              );
              expect(
                user.shoes?[0].size,
                40,
              );
              expect(
                user.shoes?[0].price,
                100.0,
              );
            },
          );
        },
      );
    },
  );
}
