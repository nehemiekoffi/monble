import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/schema.dart';
import 'package:path_provider/path_provider.dart';

const _schemas = [
  IncomeSourceSchema,
  ProjectSchema,
  TransactionSchema,
  TransactionCategorySchema,
];

Future<Isar> setupStorage() async {
  final directory = await getApplicationDocumentsDirectory();
  return Isar.open(
    _schemas,
    directory: directory.path,
    inspector: true,
  );
}
