import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_sqlite/db/sqlite.db.dart';
import 'package:flutter_sqlite/models/user.dart';
import 'package:flutter_sqlite/repositories/user.dart';
import 'package:flutter_sqlite/services/user.dart';

Future<void> main() async {
  // Open Sqlite connection
  final sqlite = SQLiteDatabase();
  await sqlite.sqliteConn();

  // Dependency Injection
  final db = sqlite.getDatabase();
  final userRepo = UserRepositoryImpl(db);
  final userService = UserService(userRepo);
  userService.addUser(User('ok', 'nguyen van khoi', DateTime.now().toString()));

  final record = await db.rawQuery("SELECT * FROM user");
  for (int i = 0; i < record.length; i++) {
    debugPrint("user: ${record[i]}");
  }

  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
  ));
}
