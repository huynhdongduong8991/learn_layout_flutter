mixin SchemaDB {
  String get initUserSchema {
    return 
      "CREATE TABLE IF NOT EXISTS user(" +
        "id INTEGER PRIMARY KEY AUTOINCREMENT," +
        "name VARCHAR(255) NULL," +
        "address VARCHAR(255) NULL," +
        "created_at VARCHAR(255) NULL" +
      ")";
  }

  String get dropUserSchema {
    return "DROP TABLE IF EXISTS user";
  }
}
