import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:number_system/number_system.dart';
// import 'package:sqflite_common_ffi/sqflite_ffi.dart';

// =================== PLAYER CLASS ======================
class Player {
  String name;
  int jerNo;
  int runs;
  double avg;
  Player({
    required this.name,
    required this.jerNo,
    required this.runs,
    required this.avg,
  });

  Map<String, dynamic> playerMap() {
    return {
      'name': name,
      'jerNo': jerNo,
      'runs': runs,
      'avg': avg,
    };
  }

  @override
  String toString() {
    return 'name:$name,jerNo: $jerNo,runs:$runs,avg:$avg';
  }
}

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String path = await getDatabasesPath();
  print(path);

  // databaseFactory = databaseFactoryFfi;
  // databaseFactory = databaseFactoryFfi;

  // =================== SETUP ======================
  database = openDatabase(
    join(await getDatabasesPath(), 'PlayerDB.db'),
    version: 1,
    onCreate: (db, version) async {
      await db.execute(
        "CREATE TABLE Player(name TEXT,jerNo INTEGER PRIMARY KEY,runs INT, avg REAL)",
      );
    },
  );

  // =================== INSERT INTO ======================

  // Player-1
  Player batsman1 = Player(
    name: 'Virat Kohli',
    jerNo: 015.octalToDec(),
    runs: 50000,
    avg: 50.77,
  );

  await insertPlayerData(batsman1);

  // Player-2
  Player batsman2 = Player(
    name: 'MS Dhoni',
    jerNo: 7,
    runs: 89943,
    avg: 70.8,
  );

  await insertPlayerData(batsman2);

  // Player-3
  Player batsman3 = Player(
    name: 'Rohit Sharma',
    jerNo: 45,
    runs: 56900,
    avg: 10.7,
  );

  batsman3 = Player(
    name: 'Rohit Sharma',
    jerNo: 786,
    runs: 56900,
    avg: 10.7,
  );

  await insertPlayerData(batsman3);

  print(await getPlayerData());
  deletePlayerData(18);
  print(await getPlayerData());

  // List listOfMap = await getPlayerData();
  // for (var player in listOfMap) {
  //   print(
  //     'Name: ${player['name']},JerNo: ${player['name']},Runs: ${player['runs']},Avg: ${player['avg']}',
  //   );
  // }
}

// =================== INSERT PLAYER DATA ======================
Future insertPlayerData(Player obj) async {
  final localDB = await database;

  await localDB.insert(
    'Player',
    obj.playerMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

Future getPlayerData() async {
  final localDB = await database;

  List<Map<String, dynamic>> listPlayers = await localDB.query('Player');
  // print(listPlayers);

  return List.generate(listPlayers.length, (index) {
    return Player(
      name: listPlayers[index]['name'],
      jerNo: listPlayers[index]['jerNo'],
      runs: listPlayers[index]['runs'],
      avg: listPlayers[index]['avg'],
    );
  });

  // return listPlayers;
}

// =================== DELETE PLAYER DATA ======================
Future deletePlayerData(int jerNo) async {
  // Get a reference to the database.
  final localDB = await database;

  // Remove the Player from the database.
  await localDB.delete(
    'Player',
    // Use a `where` clause to delete a specific dog.
    where: 'jerNo = ?',
    // Pass the JerNo as a whereArg to prevent SQL injection.
    whereArgs: [jerNo],
  );
}

// =================== UPDATE PLAYER DATA ======================
Future<void> updateDog(Player obj) async {
  // Get a reference to the database.
  final localDB = await database;

  // Update the given Dog.
  await localDB.update(
    'Player',
    obj.playerMap(),
    // Ensure that the Dog has a matching id.
    where: 'id = ?',
    // Pass the Dog's id as a whereArg to prevent SQL injection.
    whereArgs: [obj.jerNo],
  );
}
