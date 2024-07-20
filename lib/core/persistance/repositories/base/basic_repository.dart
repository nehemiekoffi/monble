import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

class BasicRepository<T extends Model> {
  @protected
  final Isar isar;

  @protected
  IsarCollection<T> get isarCollection => isar.collection<T>();

  BasicRepository(this.isar);
}
