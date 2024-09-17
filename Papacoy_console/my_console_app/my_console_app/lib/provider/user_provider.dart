import 'package:riverpod/riverpod.dart';
import '../services/user_service.dart';

final userProvider = Provider((ref) => UserService());
