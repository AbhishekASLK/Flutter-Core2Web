import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite_zomato_operations/model/zomato.dart';

dynamic database;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // =========== OPEN DATABASE =============
  database = await openDatabase(
    join(await getDatabasesPath(), 'ZomatoDB103.db'),
    version: 1,
    onCreate: (db, version) {
      db.execute(
        '''
        CREATE TABLE OrderTable(
          orderNo INTEGER PRIMARY KEY,
          customerName TEXT,
          hotelName TEXT, 
          bill REAL)
      ''',
      );
    },
  );

  Zomato obj1 = Zomato(
    customerName: 'Abhishek',
    hotelName: 'Maratha',
    bill: 700.69,
  );

  Zomato obj2 = Zomato(
    customerName: 'Steve',
    hotelName: 'Rama',
    bill: 80080.50,
  );

  insertOrder(obj1);
  insertOrder(obj2);

  print(await getOrderInfo());

  await deleteOrder(2);

  print(await getOrderInfo());
}

// =========== INSERT ORDER =============

void insertOrder(Zomato obj) async {
  await database.insert(
    'OrderTable',
    obj.zomatoMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
  );
}

// =========== GET ORDER INFO =============

Future getOrderInfo() async {
  List<Map<String, dynamic>> list = await database.query('OrderTable');
  return list;
}

// =========== DELETE ORDER INFO =============

Future deleteOrder(int orderNo) async {
  await database.delete(
    'OrderTable',
    where: 'orderNo=?',
    whereArgs: [orderNo],
  );
}
