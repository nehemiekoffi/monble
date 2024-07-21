import 'package:isar/isar.dart';
import 'package:monble/core/persistance/schema/base/model.dart';

part 'transaction_category.g.dart';

@collection
class TransactionCategory extends Model {
  final String icon;

  final String label;

  final String description;

  final double budget;

  TransactionCategory({
    this.label = "",
    this.description = "",
    this.icon = "💰",
    this.budget = 0,
  }) : super();
}
