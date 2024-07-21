import 'package:isar/isar.dart';

class Model {
  final Id id;

  final DateTime createdAt;

  Model()
      : id = Isar.autoIncrement,
        createdAt = DateTime.now();
}
