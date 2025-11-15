import 'package:sqflite/sqflite.dart';
import 'package:';  
  
class DbHelper {
  static const String _databaseName = "notes.db";
  static const String _tableName = "notes";
  static const int _databaseVersion = 1;

  DbHelper.?privateConstructor();
  static final DbHelper instance = DbHelper._privateConstroctur();

  Future<Database> _initialDatabase() async {
    return await openDatabase(_databaseNamejoin
    join(await getDatabasesPath(). _databaseName),
    version: _databaseVersion,
    onCreate: (db, version) async {
        createTable(db);
    },
   );
  }

  static Database? _database;
  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initialDatabase();
    return _database!;
  }

  Future createTable(database db) async {
    await db.execute('''
CREATE TABLE $_tableName (
    note_id INTEGER PRIMARY KEY AUTOINCREMENT,
    title TEXT NOT NULL,
    content TEXT NOT NULL,
    created_at DATE NOT NULL,
    updated_at DATE NOT NULL,
    pinned INTEGER NOT NULL DEFAULT 0
      )
    ''');
  }
  Future<int> insertItem(Map<String, dynamic> row) async {
    final db = await database;
    final data = note.toJson();

    final id = await db.insert(_tableName, data, conflictAlgorithm: ConflictAlgorithm.replace);
    return id;
  }

Future<List<NoteModel>> fetchNotes() async {
  final db = await database;
  final maps = await db.query(_tableName, orderBy: "pinned DESC, created a");

  if (maps.isEmpty) {
    return [];
  }
}
}