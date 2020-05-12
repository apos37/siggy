import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:graphologyapp/model/myarchive.dart';

class DbHelper {
  static final DbHelper _dbHelper = DbHelper._internal();

  String tblArchive = 'archive';
  String colId = 'id';
  String colDate = 'date';
  String colType = 'type';
  String colDisplayName = 'displayName';
  String colGender = 'gender';
  String colAge = 'age';
  String colObsResult = 'obsResult';
  String colUploadImage = 'uploadImage';
  String colConclusion = 'conclusion';

  DbHelper._internal();

  factory DbHelper() {
    return _dbHelper;
  }

  static Database _db;

  Future<Database> get db async {
    if (_db == null) {
      _db = await initializeDb();
    }
    return _db;
  }

  Future<Database> initializeDb() async {
    Directory dir = await getApplicationDocumentsDirectory();
    String path = dir.path + 'archives.db';
    var dbArchives = await openDatabase(path, version: 1, onCreate: _createDb);
    return dbArchives;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute(
        "CREATE TABLE $tblArchive($colId INTEGER PRIMARY KEY, $colDate TEXT, $colType TEXT, $colDisplayName TEXT, $colGender TEXT, $colAge TEXT, $colObsResult TEXT, $colUploadImage TEXT, $colConclusion TEXT)");
  }

  Future<int> insertArchive(Archive archive) async {
    Database db = await this.db;
    var result = await db.insert(tblArchive, archive.toMap());
    return result;
  }

  Future<List> getArchives() async {
    Database db = await this.db;
    var result =
        await db.rawQuery("SELECT * FROM $tblArchive order by $colDate ASC");
    return result;
  }

  Future<int> getCount() async {
    Database db = await this.db;
    var result = Sqflite.firstIntValue(
        await db.rawQuery("SELECT COUNT (*) FROM $tblArchive"));
    return result;
  }

  Future<int> updateArchive(Archive archive) async {
    Database db = await this.db;
    var result = await db.update(tblArchive, archive.toMap(),
        where: "$colId = ?", whereArgs: [archive.id]);
    return result;
  }

  Future<int> deleteArchive(int id) async {
    int result;
    var db = await this.db;
    result = await db.rawDelete("DELETE FROM $tblArchive WHERE $colId = $id");
    return result;
  }
}
