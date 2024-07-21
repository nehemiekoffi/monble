import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';
import 'package:monble/core/persistance/schema/project.dart';
import 'package:monble/core/persistance/schema/transaction_category.dart';
import 'package:monble/core/persistance/schema/transaction_type.dart';

part 'transaction.g.dart';

@collection
class Transaction extends Model {
  final String label;

  final String description;

  final DateTime date;

  final double amount;

  @Enumerated(EnumType.name)
  final TransactionType type;

  final IsarLink<TransactionCategory> category;

  final IsarLink<Project> project;

  Transaction({
    required this.date,
    this.label = "",
    this.description = "",
    this.amount = 0,
    this.type = TransactionType.expense,
    TransactionCategory? category,
    Project? project,
  })  : category = IsarLink()..value = category,
        project = IsarLink()..value = project,
        super();
}
