import 'package:my_console_app/provider/user_provider.dart';
import 'package:riverpod/riverpod.dart';

import 'dart:io';

final container = ProviderContainer();

void runApp() {
  final userService = container.read(userProvider);

  print('Welcome to the User Management Console Application');
  while (true) {
    print('\n1. Create a User\n2. Greet the User\n3. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      stdout.write('Enter your name: ');
      String? name = stdin.readLineSync();
      stdout.write('Enter your age: ');
      int? age = int.tryParse(stdin.readLineSync() ?? '');

      if (name != null && age != null) {
        userService.createUser(name, age);
        print('User created successfully!');
      } else {
        print('Invalid input. Please try again.');
      }
    } else if (choice == '2') {
      print(userService.greetUser());
    } else if (choice == '3') {
      print('Exiting the application. Goodbye!');
      break;
    } else {
      print('Invalid choice. Please enter 1, 2, or 3.');
    }
  }
}
