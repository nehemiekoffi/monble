import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

part 'income_source.g.dart';

@collection
class IncomeSource extends Model {
  final String name;

  final String description;

  final double amount;

  IncomeSource({
    this.name = "",
    this.description = "",
    this.amount = 0,
  }) : super();
}
