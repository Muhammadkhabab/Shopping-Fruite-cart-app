import 'package:shopping_cart/Model/%60cart_model.dart';
import 'package:sqflite/sqflite.dart';
// ignore: depend_on_referenced_packages
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'dart:io' as io;

class DBHelper {
  static Database? _db;
  Future<Database?> get db async {
    if (_db != null) {
      return _db!;
    }
    _db = await initDataBase();
    return null;
  }

  initDataBase() {} // This is the method to call the initDataBase.
  initDatabase() async {
    //To create path in mobile to create the data the base to required the storage memory
    io.Directory documentdirectory = await getApplicationDocumentsDirectory();
    String path = join(documentdirectory.path, 'card.db');
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
  }

  _onCreate(Database db, int version) async {
    await db.execute(
        // This is the sql queries to execute the data from the model
        'CREATE TABLE cart (id INTEGER PRIMARY KEY , productId VARCHAR UNIQUE,productName TEXT,initialPrice INTEGER, productPrice INTEGER , quantity INTEGER, unitTag TEXT , image TEXT ');
  }

  Future<Cart> insert(Cart cart) async {
    var DbCLient = await db;
    await DbCLient!.insert(
        'cart', cart.toMap()); // To ask the dbclint to insert the the value
    return cart;
  }
}
