import 'package:flutter_sqlite/models/user.dart';
import 'package:flutter_sqlite/utils/logging.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';

abstract interface class UserRepository {
  Future<void> addUser(User user);
}

class UserRepositoryImpl with Logging implements UserRepository {
  final Database _db;

  UserRepositoryImpl(this._db);

  @override
  Future<void> addUser(User user) async {
    try {
      await _db.insert(
        'user', 
        user.toMap(),
        conflictAlgorithm: ConflictAlgorithm.replace
      );
      logging('USER ADDED');
    } catch(e) {
      logging('EXCEPTION: $e');
    }
  }
}