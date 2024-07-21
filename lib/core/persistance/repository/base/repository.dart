import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';
import 'package:monble/core/persistance/repository/base/repository_mixins.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

/// A base class for all repositories.
/// You can extend this class to create a repository for a specific model with specific operations (not standard CRUD operations).
/// For standard CRUD operations, use [CrudRepository].
/// For only write operations, use [WriteOnlyRepository].
/// For only read operations, use [ReadOnlyRepository].
/// For only delete operations, use [DeleteOnlyRepository].
/// If you need a custom repository with for example only read and delete operations, but also custom ops, you can create a new class that extends this class and uses the mixins you need.
/// For example:
/// ```dart
/// class CustomRepository<Animal> extends SimpleRepository<Animal> with ReadMixin<Animal>, DeleteMixin<Animal> {
///   List<Animal> findManyByName(String name) {
///     ...
///   }
/// }
/// ```
class SimpleRepository<T extends Model> {
  @protected
  final Isar isar;

  @protected
  IsarCollection<T> get isarCollection => isar.collection<T>();

  SimpleRepository(this.isar);
}

/// A repository that provides standard CRUD operations for a model.
class CrudRepository<T extends Model> extends SimpleRepository<T> with WriteMixin<T>, ReadMixin<T>, DeleteMixin<T> {
  CrudRepository(super.isar);
}

/// A repository that provides only write operations for a model.
class WriteOnlyRepository<T extends Model> extends SimpleRepository<T> with WriteMixin<T> {
  WriteOnlyRepository(super.isar);
}

/// A repository that provides only read operations for a model.
class ReadOnlyRepository<T extends Model> extends SimpleRepository<T> with ReadMixin<T> {
  ReadOnlyRepository(super.isar);
}

/// A repository that provides only delete operations for a model.
class DeleteOnlyRepository<T extends Model> extends SimpleRepository<T> with DeleteMixin<T> {
  DeleteOnlyRepository(super.isar);
}
