import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class OyoRooms {
  int id;
  String hotelName;
  int totalRooms;
  String location;

  OyoRooms({
    required this.id,
    required this.hotelName,
    required this.totalRooms,
    required this.location,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'hotelName': hotelName,
      'totalRooms': totalRooms,
      'location': location,
    };
  }
}

dynamic database;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // String str = await getDatabasesPath();
  // print(str);

  database = await openDatabase(
    join(await getDatabasesPath(), 'SampleDB.db'),
    version: 1,
    onCreate: (db, version) {
      db.execute('''
        CREATE TABLE HotelTable(
          id INTEGER PRIMARY KEY,
          hotelName TEXT,
          totalRooms INT,
          location TEXT)
      ''');
    },
  );

  // BOOK THE HOTEL TO THE OYO ROOMS
  OyoRooms hotel1 = OyoRooms(
    id: 1,
    hotelName: 'Hotel VIV',
    totalRooms: 10,
    location: 'Pune',
  );
  database.insert(
    'HotelTable',
    hotel1.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  OyoRooms hotel2 = OyoRooms(
    id: 2,
    hotelName: 'Hotel ASLK',
    totalRooms: 20,
    location: 'Delhi',
  );
  database.insert(
    'HotelTable',
    hotel2.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );

  // RETRIVE THE OYO ROOMS DATA
  List<Map<String, dynamic>> totalRooms = await database.query('HotelTable');
  print(totalRooms);
}
