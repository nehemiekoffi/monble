import 'package:isar/isar.dart';
import 'package:monble/core/persistance/repositories/base/basic_repository.dart';
import 'package:monble/core/persistance/repositories/base/repository_mixins.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

class CrudRepository<T extends Model> extends BasicRepository with CreateMixin<T>, ReadMixin<T>, UpdateMixin<T>, DeleteMixin<T> {
  CrudRepository(Isar isar) : super(isar);
}

class CreateOnlyRepository<T extends Model> extends BasicRepository with CreateMixin<T> {
  CreateOnlyRepository(Isar isar) : super(isar);
}

class ReadOnlyRepository<T extends Model> extends BasicRepository with ReadMixin<T> {
  ReadOnlyRepository(Isar isar) : super(isar);
}

class UpdateOnlyRepository<T extends Model> extends BasicRepository with UpdateMixin<T> {
  UpdateOnlyRepository(Isar isar) : super(isar);
}

class DeleteOnlyRepository<T extends Model> extends BasicRepository with DeleteMixin<T> {
  DeleteOnlyRepository(Isar isar) : super(isar);
}
