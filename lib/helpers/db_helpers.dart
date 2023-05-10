import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

import '../models/api_models.dart';

class DBHelper {
  DBHelper._();

  static final DBHelper dbHelper = DBHelper._();

  String dbName = "JsonPlaceHolder.db";
  String tableName = "Json_Place_Holder";
  String colId = "id";
  String colUserId = "userid";
  String colPostId = "postId";
  String colAlbumId = "albumId";
  String colTitle = "title";
  String colBody = "body";
  String colName = "name";
  String colUserName = "username";
  String colEmail = "email";
  String colImage = "image";

  Database? db;

  Future<void> init() async {
    var databasesPath = await getDatabasesPath();
    String path = join(databasesPath, dbName);

    db = await openDatabase(path, version: 1,
        onCreate: (Database db, int version) async {
      String query =
          "CREATE TABLE IF NOT EXISTS $tableName($colId INTEGER PRIMARY KEY AUTOINCREMENT, $colUserId INTEGER, $colPostId INTEGER, $colAlbumId INTEGER, $colTitle TEXT, $colBody TEXT, $colName TEXT, $colUserName TEXT, $colEmail TEXT, $colImage BLOB);";
      await db.execute(query);
    });
  }

  Future<int> insertData({required JsonPlaceHolder data}) async {
    await init();
    String query =
        "INSERT INTO $tableName($colUserId, $colPostId, $colAlbumId, $colTitle, $colBody, $colName, $colUserName, $colEmail, )VALUES(?,?,?,?,?,?,?,?);";
    List args = [
      data.userId,
      data.postId,
      data.albumId,
      data.title,
      data.body,
      data.name,
      data.username,
      data.email
    ];
    print(query);
    int res = await db!.rawInsert(query, args);
    print(res);
    return res;
  }

  Future<List<JsonPlaceHolder>> fetchData({required String type}) async {
    await init();
    String query = "SELECT * FROM $tableName;";
    List<Map<String, dynamic>> dbData = await db!.rawQuery(query);
    print(dbData);
    return dbData.map((e) => JsonPlaceHolder.fromMap(e, data: {})).toList();
  }
}
