import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

@collection
class IncomeSource extends Model {
  final String name;

  final String description;

  final num amount;

  IncomeSource({
    this.name = "",
    this.description = "",
    this.amount = 0,
  }) : super();
}
