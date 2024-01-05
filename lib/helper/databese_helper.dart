import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

import '../models/model.dart';

class DatabaseHelper {
  static Database? _database;

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await initDatabase();
    return _database!;
  }

  Future<Database> initDatabase() async {
    final path = await getDatabasesPath();
    final dbPath = join(path, 'BcGas.db');

    return await openDatabase(
      dbPath,
      version: 1,
      onCreate: (Database db, int version) async {
        await db.execute('''
          CREATE TABLE work_orders (
            record_id INTEGER PRIMARY KEY,
            project_id TEXT,
            work_order TEXT,
            to_do_filter TEXT,
            area TEXT,
            assigned TEXT,
            responsible_agent TEXT,
            location TEXT,
            activity TEXT,
            scheduled_date TEXT,
            state TEXT,
            picked_time TEXT,
            arrived_time TEXT,
            coordinates TEXT
          )
        ''');
      },
    );
  }

  Future<void> insertWorkOrderModel(WorkOrderModel workOrderModel) async {
    final db = await database;
    final List<WorkOrder>? workOrders = workOrderModel.data?.workOrders;

    if (workOrders != null) {
      final batch = db.batch();
      for (var order in workOrders) {
        final existing = await db.query('work_orders',
            where: 'record_id = ?', whereArgs: [order.recordId]);
        if (existing.isEmpty) {
          batch.insert(
            'work_orders',
            order.toJson(),
          );
        } else {
          batch.update(
            'work_orders',
            order.toJson(),
            where: 'record_id = ?',
            whereArgs: [order.recordId],
          );
        }
      }
      await batch.commit(noResult: true);
    }
  }

  Future<List<WorkOrder>> getWorkOrders() async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query('work_orders');
    return List.generate(maps.length, (i) {
      return WorkOrder.fromJson(maps[i]);
    });
  }
}
