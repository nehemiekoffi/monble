import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';
import 'package:monble/core/persistance/schema/project.dart';
import 'package:monble/core/persistance/schema/transaction_category.dart';
import 'package:monble/core/persistance/schema/transaction_type.dart';

@collection
class Transaction extends Model {
  final String label;

  final String description;

  final DateTime date;

  final num amount;

  @Enumerated(EnumType.name)
  final TransactionType type;

  final IsarLink<TransactionCategory> category;

  final IsarLink<Project> project;

  Transaction({
    this.label = "",
    this.description = "",
    DateTime? date,
    this.amount = 0,
    this.type = TransactionType.expense,
    TransactionCategory? category,
    Project? project,
  })  : date = date ?? DateTime.now(),
        category = IsarLink()..value = category,
        project = IsarLink()..value = project,
        super();
}
