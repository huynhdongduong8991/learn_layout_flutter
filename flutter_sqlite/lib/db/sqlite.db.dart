import 'dart:async';

import 'package:flutter_sqlite/db/schema.sql.dart';
import 'package:flutter_sqlite/utils/logging.dart';
import 'package:path/path.dart';
import 'package:sqflite_common_ffi/sqflite_ffi.dart';
import 'package:sqflite_common_ffi_web/sqflite_ffi_web.dart';

class SQLiteDatabase with Logging, SchemaDB {
  late Database _db;

  SQLiteDatabase() {
    sqfliteFfiInit();
  }

  Future<String> getDatabasePath() async {
    return join(await getDatabasesPath(), "user_management.db");
  }

  Future<void> sqliteConn() async {
    try {
      databaseFactory = databaseFactoryFfiWeb;
      final databasePath = await getDatabasePath();
      _db = await databaseFactory.openDatabase(databasePath);
      var record = await _db.rawQuery("select sqlite_version()");
      var version = record.first.values.first;
      logging('CONNECT DATABASE SUCCESSFULLY - DB VERSION $version');
    } catch (e) {
      logging('EXCEPTION: $e');
    }
  }

  Database getDatabase() => _db;

  Future<void> initTables() async {
    initUserTable();

    /* The rest table want to init */
  }

  Future<void> initUserTable() async {
    try {
      await _db.execute(initUserSchema);
      logging('CREATED USER TABLE');
    } catch (e) {
      logging('EXCEPTION: $e');
    }
  }

  Future<void> dropTables() async {
    dropUserTable();
    
    /* The rest table want to drop */
  }

  Future<void> dropUserTable() async {
    try {
      await _db.execute(dropUserSchema);
      logging('DROPED USER TABLE');
    } catch (e) {
      logging('EXCEPTION: $e');
    }
  }
}
