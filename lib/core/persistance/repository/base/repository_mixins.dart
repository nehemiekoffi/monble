import 'package:isar/isar.dart';
import 'package:monble/core/persistance/repository/base/repository.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

/// A mixin that provides write operations for a repository.
/// Write operations include saving a single model and saving multiple models.
/// Saving means creating or updating a model in the database.
mixin WriteMixin<T extends Model> on SimpleRepository<T> {
  T save(T model) {
    return isar.writeTxnSync(() {
      final id = isarCollection.putSync(model);
      return isarCollection.getSync(id)!;
    });
  }

  ({bool result, int savedCount}) saveMany(List<T> models) {
    return isar.writeTxnSync(() {
      final ids = isarCollection.putAllSync(models);
      return (
        result: ids.length == models.length,
        savedCount: ids.length,
      );
    });
  }
}

/// A mixin that provides read operations for a repository.
/// Read operations include finding a single model and finding multiple models.
mixin ReadMixin<T extends Model> on SimpleRepository<T> {
  T? find(Id id) {
    return isarCollection.getSync(id);
  }

  List<T?> findMany(List<Id> ids) {
    return isarCollection.getAllSync(ids);
  }
}

/// A mixin that provides delete operations for a repository.
/// Delete operations include deleting a single model and deleting multiple models.
/// To be fair, delete operations are kind of write operations, but we are separating them for clarity.
mixin DeleteMixin<T extends Model> on SimpleRepository<T> {
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
