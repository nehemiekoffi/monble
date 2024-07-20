import 'package:isar/isar.dart';
import 'package:monble/core/persistance/repositories/base/basic_repository.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

mixin CreateMixin<T extends Model> on BasicRepository {
  T insert(T model) {
    return isar.writeTxnSync<T>(() {
      final id = isarCollection.putSync(model);
      return isarCollection.getSync(id)! as T;
    });
  }

  ({bool result, int insertedCount}) insertMany(List<T> models) {
    return isar.writeTxnSync(() {
      final ids = isarCollection.putAllSync(models);
      return (
        result: ids.length == models.length,
        insertedCount: ids.length,
      );
    });
  }
}

mixin ReadMixin<T extends Model> on BasicRepository {
  T? find(Id id) {
    return isarCollection.getSync(id) as T?;
  }

  List<T?> findMany(List<Id> ids) {
    return isarCollection.getAllSync(ids) as List<T?>;
  }
}

mixin UpdateMixin<T extends Model> on BasicRepository {
  T update(T model) {
    return isar.writeTxnSync<T>(() {
      final id = isarCollection.putSync(model);
      return isarCollection.getSync(id)! as T;
    });
  }

  ({bool result, int updatedCount}) updateMany(List<T> models) {
    return isar.writeTxnSync(() {
      final ids = isarCollection.putAllSync(models);
      return (
        result: ids.length == models.length,
        updatedCount: ids.length,
      );
    });
  }
}

mixin DeleteMixin<T extends Model> on BasicRepository {
  bool delete(Id id) {
    return isarCollection.deleteSync(id);
  }

  ({bool result, int deletedCount}) deleteMany(List<Id> ids) {
    final deletedCount = isarCollection.deleteAllSync(ids);
    return (
      result: deletedCount == ids.length,
      deletedCount: deletedCount,
    );
  }
}
