import '../models/user.dart';

class UserService {
  User? _currentUser;

  void createUser(String name, int age) {
    _currentUser = User(name, age);
  }

  User? get currentUser => _currentUser;

  String greetUser() {
    if (_currentUser != null) {
      return 'Hello, ${_currentUser!.name}! You are ${_currentUser!.age} years old.';
    }
    return 'No user found. Please create a user first.';
  }
}
