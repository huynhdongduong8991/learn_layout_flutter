import 'package:flutter_sqlite/models/user.dart';
import 'package:flutter_sqlite/repositories/user.dart';

class UserService {
  final UserRepository userRepo;

  UserService(this.userRepo);

  Future<void> addUser(User user) async {
    userRepo.addUser(user);
  }
}